# Connect to SharePoint
Connect-PnPOnline -Url "https://madisoncollege365.sharepoint.com/sites/2026SpringDevOps" -Interactive

# Get all 'Recordings' folders across channels
$recordingFolders = Get-PnPFolderItem -FolderSiteRelativeUrl "Shared Documents" -ItemType Folder |
    Where-Object { $_.Name -eq "Recordings" }

$results = @()

foreach ($folder in $recordingFolders) {
    $files = Get-PnPFolderItem -FolderSiteRelativeUrl $folder.ServerRelativeUrl -ItemType File
    foreach ($file in $files) {
        $results += [PSCustomObject]@{
            Channel      = ($folder.ServerRelativeUrl -split "/")[-2]
            FileName     = $file.Name
            RecordingUrl = $file.ServerRelativeUrl
        }
    }
}

$results | Export-Csv "2026SpringDevOpsTeamsChannelRecordings.csv" -NoTypeInformation
