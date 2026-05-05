# $SiteUrl = "https://madisoncollege365.sharepoint.com/teams/2026SpringDevOps"
# $BasePath = "/teams/2026SpringDevOps/Shared Documents"

# $SiteUrl = "https://madisoncollege365.sharepoint.com/teams/2026SpringAdvFE"
# $BasePath = "/teams/2026SpringAdvFE/Shared Documents"

$SiteUrl = "https://madisoncollege365.sharepoint.com/teams/2026SpringDataViz"
$BasePath = "/teams/2026SpringDataViz/Shared Documents"

# $FedAuth = "REDACTED"
# $RtFa = "REDACTED"

# $FedAuth = "REDACTED"
# $RtFa = "REDACTED"

$FedAuth = "REDACTED"
$RtFa = "REDACTED"

$handler = New-Object System.Net.Http.HttpClientHandler
$handler.CookieContainer = New-Object System.Net.CookieContainer

$rootUri = [System.Uri]"https://madisoncollege365.sharepoint.com"
$handler.CookieContainer.Add($rootUri, (New-Object System.Net.Cookie("FedAuth", $FedAuth, "/", $rootUri.Host)))
$handler.CookieContainer.Add($rootUri, (New-Object System.Net.Cookie("rtFa", $RtFa, "/", $rootUri.Host)))

$client = New-Object System.Net.Http.HttpClient($handler)

$results = @()

for ($i = 1; $i -le 16; $i++) {

    $week = "Week {0:D2}" -f $i
    Write-Output "Scanning $week"

    $recPath = "$BasePath/$week/Recordings"
    $url = "$SiteUrl/_api/web/GetFolderByServerRelativeUrl('$recPath')/Files"

    $response = $client.GetAsync($url).Result
    $text = $response.Content.ReadAsStringAsync().Result

    # if ($text -notlike "<feed*") {
    #     Write-Output "  No XML feed for $week"
    #     continue
    # }

    $xml = [xml]$text

    foreach ($entry in $xml.feed.entry) {

        $name = $entry.content.properties.Name
        $srv  = $entry.content.properties.ServerRelativeUrl
        $created = $entry.content.properties.TimeCreated

        $results += [PSCustomObject]@{
            Week = $week
            FileName = $name
            Created = $created
            DownloadUrl = "https://madisoncollege365.sharepoint.com$srv"
        }
    }
}

$results | Export-Csv "2026SpringDataVizAllWeeksRecordings.csv" -NoTypeInformation
Write-Output "Done."
