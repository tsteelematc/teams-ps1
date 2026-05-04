$SiteUrl = "https://madisoncollege365.sharepoint.com/teams/2026SpringDevOps"
$BasePath = "/teams/2026SpringDevOps/Shared Documents"

$FedAuth = "77u/PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48U1A+VjE1LDBoLmZ8bWVtYmVyc2hpcHwxMDAzN2ZmZThiMmVlNjA3QGxpdmUuY29tLDAjLmZ8bWVtYmVyc2hpcHx0c3RlZWxlQG1hZGlzb25jb2xsZWdlLmVkdSwxMzQyMjM3NjU1NjAwMDAwMDAsMTM0MDUxODI5MjAwMDAwMDAwLDEzNDIyODI5NTcxNzI2MDcyMCwxOTguMTUwLjEyLjMyLDY3LDBjMmUyYWU0LWRkNWMtNDM5Zi05MDUyLWE5ZjVmN2MwMGJkMywsMDAzZjgxZWEtZDdmYi1hNjc3LWEzODktMWVjY2ZmMzMzYzkxLDlmNTgxMGEyLTUwNWUtYzAwMC1mMTc1LThlOTg0MzM1OGEwMCwzYjZiMTBhMi1jMDI4LWMwMDAtZjE3NS04MzZmMTg0MWZkYmIsLDAsMTM0MjI0MDA4NzEzMTc2Mjc2LDEzNDIyNjU2NDcxMzE3NjI3NiwsLGV5SmpZWEJ2Ykdsa2MxOXNZWFJsWW1sdVpDSTZJbHRjSWprMU5HWmlPREkzTFRnNFltSXRORGN5WkMxaFpUUTJMVFF3T1RRNVpqSXdZamt4TWx3aVhTSXNJbmh0YzE5all5STZJbHRjSWtOUU1Wd2lYU0lzSW5odGMxOXpjMjBpT2lJeElpd2ljSEpsWm1WeWNtVmtYM1Z6WlhKdVlXMWxJam9pVkZOMFpXVnNaVUJ0WVdScGMyOXVZMjlzYkdWblpTNWxaSFVpTENKMWRHa2lPaUppY0hSQ1dYTlNPR1pGUzE5MFZsOVpVbFE0U1VGQklpd2lZWFYwYUY5MGFXMWxJam9pTVRNME1qSXpOelkxTlRZd01EQXdNREF3SW4wPSwyNjUwNDY3NzQzOTk5OTk5OTk5LDEzNDIyMzc4MDU4MDAwMDAwMCwxMzlkNzA1MC0xNjRkLTQzMDAtOTdhNi0yZjcxMzY4ZjE5MzcsLCwsLCwxMTUyOTIxNTA0NjA2ODQ2OTc2LCwxOTI2NTQsUWcyRllEWEJrRmYxeDFNMnhRWFdFUkM3R3RRLCwxOTI2NTQsUWcyRllEWEJrRmYxeDFNMnhRWFdFUkM3R3RRLGhZbUhqWU9vSk5lWWdzcWpqNEd3b2Y3QVJuV2UrZXlBeThNN2FFMmx4b2ZNbXA4UGZubFpKNXVTOVE0MmVGMUx0TWNDQm03cWtFZ1VBYlQ2VGtSM3dBYnhUbFN6Y1BoOFFiOEtBUHJSenNIRWNFNm1ta3JJa1duUjJqYXZ6Tm1qM3RieGd5dnhBVS91Ri9DRzBoYVRYdVYrTDIvbnRsejdIbGZKNzlMTkN2UWUzZEo3V3gzUldQNnRyZEhURXlkV04yRnR6eEpQblZsbGZtdURZZFF5ZHF4UDlCaW5WdFhwM3VjcUVCNFVpa0hqOXI5aWM1dmoxSktkS2lQb2tYZmVBRTRMMTBVNEorNUpYVllXaTJLb3FwVTBLYUxsUWpHUFFXNjlRZFFmSExUTjB5TFdJd2dxaUxmS0VPNm9qT2NaVzUxZ1BPNlVNNzBMWGkxbmRGS3Zldz09PC9TUD4="
$RtFa = "B5kvyjf+qT9LL7T2wrfcNZ+eYrUTLQFa2DlZ8QbipJEmMGMyZTJhZTQtZGQ1Yy00MzlmLTkwNTItYTlmNWY3YzAwYmQzIzEzNDIyMzc4MDU5MzkxNDY0MyM5ZjU4MTBhMi01MDVlLWMwMDAtZjE3NS04ZTk4NDMzNThhMDAjVFN0ZWVsZSU0MG1hZGlzb25jb2xsZWdlLmVkdSMxOTI2NTQjQnlBVjROdVJyc1h6QTVMdVpVQUZ6SWozRWtvI0J5QVY0TnVScnNYekE1THVaVUFGeklqM0Vrb8LvijZPk5UhlmWSQjfNVvdTLxFcWnWcQYiSGNcvpY++CHcsHjfslysd4C2J6GKPB4TaVEtt/ktQ5/zCbDHMrqL9lqR/TFMnv6X8pfLInjGJAxz0ua1mqXOWkCGQCmiuvYS0CEBK3rQZGP8bNHg0fB5S25aC7Bhab9AYShs955Xr5upj4RTfKeQhWDvGnr2EJaZ1icYN9k3URAQhSR5OvdYyA+1nm2p0eY72KAe3gDoR206Y7WcnuhzGzL/Rmmp82dBCV1YyOtHI05Y3rXbbIC+hc3YFEowO9gFU4EGfS9auOyB0amPoc7dDA4yoLbAZJMq3ZwH6SzC1pv7zbIIgleTZAAAA"

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

$results | Export-Csv "2026SpringDevOpsAllWeeksRecordings.csv" -NoTypeInformation
Write-Output "Done."
