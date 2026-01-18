#requires -module MicrosoftTeams

<#
.SYNOPSIS
    Adds users from a CSV file to a private Microsoft Teams channel.

.DESCRIPTION
    This script reads a list of users from a CSV file and adds them to a specified private channel within a team.
    It requires the MicrosoftTeams PowerShell module to be installed and for the user running the script to have
    the necessary permissions in Teams to add members to channels.

.PARAMETER TeamName
    The display name of the team that contains the private channel.

.PARAMETER ChannelName
    The display name of the private channel to which users will be added.

.PARAMETER CsvPath
    The file path to the CSV file containing the user information.

.PARAMETER EmailColumnName
    The name of the column in the CSV file that contains the user's email address or User Principal Name (UPN).

.EXAMPLE
    .\add-to-teams.ps1 -TeamName "My Awesome Team" -ChannelName "Super Secret Channel" -CsvPath ".\users.csv" -EmailColumnName "Email"

    This example connects to Microsoft Teams, reads users from 'users.csv', and adds them to 'Super Secret Channel' in 'My Awesome Team'.
#>
param(
    [Parameter(Mandatory=$true)]
    [string]$TeamName,

    [Parameter(Mandatory=$true)]
    [string]$ChannelName,

    [Parameter(Mandatory=$true)]
    [string]$CsvPath,

    [Parameter(Mandatory=$true)]
    [string]$EmailColumnName = "Email"
)

# Check if the MicrosoftTeams module is installed
if (-not (Get-Module -ListAvailable -Name MicrosoftTeams)) {
    Write-Host "MicrosoftTeams module is not installed. Attempting to install..."
    try {
        Install-Module MicrosoftTeams -Force -AllowClobber -Scope CurrentUser
        Write-Host "MicrosoftTeams module installed successfully."
    }
    catch {
        Write-Error "Failed to install MicrosoftTeams module. Please install it manually and try again."
        return
    }
}

# Connect to Microsoft Teams
try {
    Connect-MicrosoftTeams
}
catch {
    Write-Error "Failed to connect to Microsoft Teams. Please ensure you are logged in with appropriate credentials."
    return
}


# Get the Team
$team = Get-Team -DisplayName $TeamName
if (-not $team) {
    Write-Error "Team not found: $TeamName"
    return
}

# Get the Channel
$channel = Get-TeamChannel -GroupId $team.GroupId | Where-Object { $_.DisplayName -eq $ChannelName }
if (-not $channel) {
    Write-Error "Channel not found: $ChannelName in team $TeamName"
    return
}

if ($channel.MembershipType -ne "Private") {
    Write-Error "Channel '$ChannelName' is not a private channel."
    return
}

# Import users from CSV
if (-not (Test-Path -Path $CsvPath)) {
    Write-Error "CSV file not found at path: $CsvPath"
    return
}

$users = Import-Csv -Path $CsvPath

# Add each user to the channel
foreach ($user in $users) {
    $email = $user.$EmailColumnName
    if ([string]::IsNullOrWhiteSpace($email)) {
        Write-Warning "Skipping a row with an empty email address."
        continue
    }

    try {
        Write-Host "Adding user '$email' to channel '$ChannelName'..."
        Add-TeamChannelUser -GroupId $team.GroupId -DisplayName $channel.DisplayName -User $email
        Write-Host "Successfully added '$email'."
    }
    catch {
        Write-Warning "Could not add user '$email'. They might already be in the channel, or the user was not found. Error: $($_.Exception.Message)"
    }
}

Write-Host "Script finished."
