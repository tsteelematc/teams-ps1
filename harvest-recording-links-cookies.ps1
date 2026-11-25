# $SiteUrl = "https://madisoncollege365.sharepoint.com/teams/2026SpringDevOps"
# $BasePath = "/teams/2026SpringDevOps/Shared Documents"

# $SiteUrl = "https://madisoncollege365.sharepoint.com/teams/2026SpringAdvFE"
# $BasePath = "/teams/2026SpringAdvFE/Shared Documents"

# $SiteUrl = "https://madisoncollege365.sharepoint.com/teams/2026SpringDataViz"
# $BasePath = "/teams/2026SpringDataViz/Shared Documents"

# 2026-fall

$SiteUrl = "https://madisoncollege365.sharepoint.com/teams/2026FallMachineLearning"
$BasePath = "/teams/2026FallMachineLearning/Shared Documents"

# FedAuth/rtFa are session cookies copied from a logged-in browser (DevTools > Application > Cookies
# for madisoncollege365.sharepoint.com). They are live credentials - never hardcode or commit them.
# Set them in the current shell before running this script, e.g. by dot-sourcing a local,
# gitignored set-spo-cookies.ps1 that does:
#   $env:SPO_FEDAUTH = "<FedAuth cookie value>"
#   $env:SPO_RTFA = "<rtFa cookie value>"
$FedAuth = $env:SPO_FEDAUTH
$RtFa = $env:SPO_RTFA

if (-not $FedAuth -or -not $RtFa) {
    throw "Set `$env:SPO_FEDAUTH and `$env:SPO_RTFA (copied from a logged-in browser session) before running this script."
}


$handler = New-Object System.Net.Http.HttpClientHandler
$handler.CookieContainer = New-Object System.Net.CookieContainer

$rootUri = [System.Uri]"https://madisoncollege365.sharepoint.com"
$handler.CookieContainer.Add($rootUri, (New-Object System.Net.Cookie("FedAuth", $FedAuth, "/", $rootUri.Host)))
$handler.CookieContainer.Add($rootUri, (New-Object System.Net.Cookie("rtFa", $RtFa, "/", $rootUri.Host)))

$client = New-Object System.Net.Http.HttpClient($handler)

# ai to test
# $response = $client.GetAsync("$SiteUrl/_api/web/title").Result
# Write-Output "Status: $($response.StatusCode)"
# $text = $response.Content.ReadAsStringAsync().Result
# Write-Output $text.Substring(0, [Math]::Min(500, $text.Length))

# $response = $client.GetAsync("$SiteUrl/_api/web/title").Result
# Write-Output "Status: $($response.StatusCode)"
# foreach ($h in $response.Headers) { Write-Output "$($h.Key): $($h.Value -join ',')" }
# $text = $response.Content.ReadAsStringAsync().Result
# Write-Output "---BODY---"
# Write-Output $text.Substring(0, [Math]::Min(2000, $text.Length))


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

$results | Export-Csv "2026FallMachineLearningAllWeeksRecordings.csv" -NoTypeInformation
Write-Output "Done."
