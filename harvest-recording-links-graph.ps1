# Connect to Graph with Files.Read.All + Sites.Read.All
Connect-MgGraph -Scopes "Sites.Read.All","Files.Read.All"

# Get the SharePoint site for the Team
$site = Get-MgSite -Search "madisoncollege365.sharepoint.com/sites/2026SpringDevOps"

# Get the default document library (Shared Documents)
$drive = Get-MgSiteDrive -SiteId $site.Id | Where-Object { $_.Name -eq "Documents" }

# Get all channel folders
$channels = Get-MgDriveItemChild -DriveId $drive.Id -ItemId $drive.Root.Id |
    Where-Object { $_.Folder -ne $null }

$results = @()

foreach ($channel in $channels) {

    # Look for a "Recordings" folder inside the channel
    $recordings = Get-MgDriveItemChild -DriveId $drive.Id -ItemId $channel.Id |
        Where-Object { $_.Name -eq "Recordings" }

    if ($recordings) {
        # Get all files inside Recordings
        $files = Get-MgDriveItemChild -DriveId $drive.Id -ItemId $recordings.Id

        foreach ($file in $files) {
            $results += [PSCustomObject]@{
                Channel      = $channel.Name
                FileName     = $file.Name
                RecordingUrl = $file.WebUrl
                Created      = $file.CreatedDateTime
            }
        }
    }
}

$results | Export-Csv "2026SpringDevOpsTeamsChannelRecordings.csv" -NoTypeInformation
