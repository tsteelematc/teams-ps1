# $cookie = New-Object System.Net.CookieContainer
# $uri = "https://madisoncollege365.sharepoint.com"

# $cookie.Add((New-Object System.Net.Cookie("FedAuth", "77u/PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48U1A+VjE1LDBoLmZ8bWVtYmVyc2hpcHwxMDAzN2ZmZThiMmVlNjA3QGxpdmUuY29tLDAjLmZ8bWVtYmVyc2hpcHx0c3RlZWxlQG1hZGlzb25jb2xsZWdlLmVkdSwxMzQyMjM3NjU1NjAwMDAwMDAsMTM0MDUxODI5MjAwMDAwMDAwLDEzNDIyODEwMDU5MzY3MTg1NiwxOTguMTUwLjEyLjMyLDY3LDBjMmUyYWU0LWRkNWMtNDM5Zi05MDUyLWE5ZjVmN2MwMGJkMywsMDAzZjgxZWEtZDdmYi1hNjc3LWEzODktMWVjY2ZmMzMzYzkxLDlmNTgxMGEyLTUwNWUtYzAwMC1mMTc1LThlOTg0MzM1OGEwMCw5ZjU4MTBhMi01MDVlLWMwMDAtZjE3NS04ZTk4NDMzNThhMDAsLDAsMTM0MjIzODE2NTkzMzQzMTMyLDEzNDIyNjM3MjU5MzM0MzEzMiwsLGV5SmpZWEJ2Ykdsa2MxOXNZWFJsWW1sdVpDSTZJbHRjSWprMU5HWmlPREkzTFRnNFltSXRORGN5WkMxaFpUUTJMVFF3T1RRNVpqSXdZamt4TWx3aVhTSXNJbmh0YzE5all5STZJbHRjSWtOUU1Wd2lYU0lzSW5odGMxOXpjMjBpT2lJeElpd2ljSEpsWm1WeWNtVmtYM1Z6WlhKdVlXMWxJam9pVkZOMFpXVnNaVUJ0WVdScGMyOXVZMjlzYkdWblpTNWxaSFVpTENKMWRHa2lPaUppY0hSQ1dYTlNPR1pGUzE5MFZsOVpVbFE0U1VGQklpd2lZWFYwYUY5MGFXMWxJam9pTVRNME1qSXpOelkxTlRZd01EQXdNREF3SW4wPSwyNjUwNDY3NzQzOTk5OTk5OTk5LDEzNDIyMzc4MDU4MDAwMDAwMCwxMzlkNzA1MC0xNjRkLTQzMDAtOTdhNi0yZjcxMzY4ZjE5MzcsLCwsLCwxMTUyOTIxNTA0NjA2ODQ2OTc2LCwxOTI2NTQsUWcyRllEWEJrRmYxeDFNMnhRWFdFUkM3R3RRLCwwLCxaV0hHVWl5VVVjNEZHdmtJNUltL1V2Qk5nczFKZldoaWpLcnNMMVhEWklmWVBQajNyVGdDdml0UXNtR3Fib3hvZ2JyZDcwd2VZdEZBTFZEa2tXSDJ5RTY4dWFUMXlHZlJ3WHE3T0xYVU1VYVFOem0waHZ5SmxuRlJCekl1RmZLN0VhT3A0SUxXZmE2NnAzQ2lVZXZHTUJ5anNYcHgzeEx1d1pDcElFSEplVFovQ0h3eU1jd1NOTTMzWnV2anAwRTZ0eEF6d2JUTDBVQitQYVJBSzhOZ2cvVldlLzZJTkh2N0ZES3JGa2RyRzkrRVFEZkw3bnBoN1M4aWJaRTdLU2xFbVFEVXBhYmMwdHhKQkZKL1d4Sm5nYTFjZU8rZEgrM2xwRjdBZjJjNkxTREYvemJBK2lCMXY2UHRrbm1GeGtFUzRUVEUvTkN5ZnNwa3RnZUtUMzB4Smc9PTwvU1A+", "/", "madisoncollege365.sharepoint.com")))
# $cookie.Add((New-Object System.Net.Cookie("rtFa", "B5kvyjf+qT9LL7T2wrfcNZ+eYrUTLQFa2DlZ8QbipJEmMGMyZTJhZTQtZGQ1Yy00MzlmLTkwNTItYTlmNWY3YzAwYmQzIzEzNDIyMzc4MDU5MzkxNDY0MyM5ZjU4MTBhMi01MDVlLWMwMDAtZjE3NS04ZTk4NDMzNThhMDAjVFN0ZWVsZSU0MG1hZGlzb25jb2xsZWdlLmVkdSMxOTI2NTQjQnlBVjROdVJyc1h6QTVMdVpVQUZ6SWozRWtvI0J5QVY0TnVScnNYekE1THVaVUFGeklqM0Vrb8LvijZPk5UhlmWSQjfNVvdTLxFcWnWcQYiSGNcvpY++CHcsHjfslysd4C2J6GKPB4TaVEtt/ktQ5/zCbDHMrqL9lqR/TFMnv6X8pfLInjGJAxz0ua1mqXOWkCGQCmiuvYS0CEBK3rQZGP8bNHg0fB5S25aC7Bhab9AYShs955Xr5upj4RTfKeQhWDvGnr2EJaZ1icYN9k3URAQhSR5OvdYyA+1nm2p0eY72KAe3gDoR206Y7WcnuhzGzL/Rmmp82dBCV1YyOtHI05Y3rXbbIC+hc3YFEowO9gFU4EGfS9auOyB0amPoc7dDA4yoLbAZJMq3ZwH6SzC1pv7zbIIgleTZAAAA", "/", "madisoncollege365.sharepoint.com")))

# $client = New-Object System.Net.Http.HttpClient
# $handler = New-Object System.Net.Http.HttpClientHandler
# $handler.CookieContainer = $cookie
# $client = New-Object System.Net.Http.HttpClient($handler)

# $response = $client.GetStringAsync("$uri/sites/2026SpringDevOps/_api/web/GetFolderByServerRelativeUrl('Shared Documents')/Folders").Result
# $response

$SiteUrl = "https://madisoncollege365.sharepoint.com"
$TestEndpoint = "$SiteUrl/teams/2026SpringDevOps/_api/web"

# Paste your cookies here
$FedAuth = "77u/PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48U1A+VjE1LDBoLmZ8bWVtYmVyc2hpcHwxMDAzN2ZmZThiMmVlNjA3QGxpdmUuY29tLDAjLmZ8bWVtYmVyc2hpcHx0c3RlZWxlQG1hZGlzb25jb2xsZWdlLmVkdSwxMzQyMjM3NjU1NjAwMDAwMDAsMTM0MDUxODI5MjAwMDAwMDAwLDEzNDIyODEwMDU5MzY3MTg1NiwxOTguMTUwLjEyLjMyLDY3LDBjMmUyYWU0LWRkNWMtNDM5Zi05MDUyLWE5ZjVmN2MwMGJkMywsMDAzZjgxZWEtZDdmYi1hNjc3LWEzODktMWVjY2ZmMzMzYzkxLDlmNTgxMGEyLTUwNWUtYzAwMC1mMTc1LThlOTg0MzM1OGEwMCw5ZjU4MTBhMi01MDVlLWMwMDAtZjE3NS04ZTk4NDMzNThhMDAsLDAsMTM0MjIzODE2NTkzMzQzMTMyLDEzNDIyNjM3MjU5MzM0MzEzMiwsLGV5SmpZWEJ2Ykdsa2MxOXNZWFJsWW1sdVpDSTZJbHRjSWprMU5HWmlPREkzTFRnNFltSXRORGN5WkMxaFpUUTJMVFF3T1RRNVpqSXdZamt4TWx3aVhTSXNJbmh0YzE5all5STZJbHRjSWtOUU1Wd2lYU0lzSW5odGMxOXpjMjBpT2lJeElpd2ljSEpsWm1WeWNtVmtYM1Z6WlhKdVlXMWxJam9pVkZOMFpXVnNaVUJ0WVdScGMyOXVZMjlzYkdWblpTNWxaSFVpTENKMWRHa2lPaUppY0hSQ1dYTlNPR1pGUzE5MFZsOVpVbFE0U1VGQklpd2lZWFYwYUY5MGFXMWxJam9pTVRNME1qSXpOelkxTlRZd01EQXdNREF3SW4wPSwyNjUwNDY3NzQzOTk5OTk5OTk5LDEzNDIyMzc4MDU4MDAwMDAwMCwxMzlkNzA1MC0xNjRkLTQzMDAtOTdhNi0yZjcxMzY4ZjE5MzcsLCwsLCwxMTUyOTIxNTA0NjA2ODQ2OTc2LCwxOTI2NTQsUWcyRllEWEJrRmYxeDFNMnhRWFdFUkM3R3RRLCwwLCxaV0hHVWl5VVVjNEZHdmtJNUltL1V2Qk5nczFKZldoaWpLcnNMMVhEWklmWVBQajNyVGdDdml0UXNtR3Fib3hvZ2JyZDcwd2VZdEZBTFZEa2tXSDJ5RTY4dWFUMXlHZlJ3WHE3T0xYVU1VYVFOem0waHZ5SmxuRlJCekl1RmZLN0VhT3A0SUxXZmE2NnAzQ2lVZXZHTUJ5anNYcHgzeEx1d1pDcElFSEplVFovQ0h3eU1jd1NOTTMzWnV2anAwRTZ0eEF6d2JUTDBVQitQYVJBSzhOZ2cvVldlLzZJTkh2N0ZES3JGa2RyRzkrRVFEZkw3bnBoN1M4aWJaRTdLU2xFbVFEVXBhYmMwdHhKQkZKL1d4Sm5nYTFjZU8rZEgrM2xwRjdBZjJjNkxTREYvemJBK2lCMXY2UHRrbm1GeGtFUzRUVEUvTkN5ZnNwa3RnZUtUMzB4Smc9PTwvU1A+"
$RtFa = "B5kvyjf+qT9LL7T2wrfcNZ+eYrUTLQFa2DlZ8QbipJEmMGMyZTJhZTQtZGQ1Yy00MzlmLTkwNTItYTlmNWY3YzAwYmQzIzEzNDIyMzc4MDU5MzkxNDY0MyM5ZjU4MTBhMi01MDVlLWMwMDAtZjE3NS04ZTk4NDMzNThhMDAjVFN0ZWVsZSU0MG1hZGlzb25jb2xsZWdlLmVkdSMxOTI2NTQjQnlBVjROdVJyc1h6QTVMdVpVQUZ6SWozRWtvI0J5QVY0TnVScnNYekE1THVaVUFGeklqM0Vrb8LvijZPk5UhlmWSQjfNVvdTLxFcWnWcQYiSGNcvpY++CHcsHjfslysd4C2J6GKPB4TaVEtt/ktQ5/zCbDHMrqL9lqR/TFMnv6X8pfLInjGJAxz0ua1mqXOWkCGQCmiuvYS0CEBK3rQZGP8bNHg0fB5S25aC7Bhab9AYShs955Xr5upj4RTfKeQhWDvGnr2EJaZ1icYN9k3URAQhSR5OvdYyA+1nm2p0eY72KAe3gDoR206Y7WcnuhzGzL/Rmmp82dBCV1YyOtHI05Y3rXbbIC+hc3YFEowO9gFU4EGfS9auOyB0amPoc7dDA4yoLbAZJMq3ZwH6SzC1pv7zbIIgleTZAAAA"

$handler = New-Object System.Net.Http.HttpClientHandler
$handler.CookieContainer = New-Object System.Net.CookieContainer

$uri = [System.Uri]$SiteUrl

$handler.CookieContainer.Add($uri, (New-Object System.Net.Cookie("FedAuth", $FedAuth, "/", $uri.Host)))
$handler.CookieContainer.Add($uri, (New-Object System.Net.Cookie("rtFa", $RtFa, "/", $uri.Host)))

$client = New-Object System.Net.Http.HttpClient($handler)

Write-Output "Testing SharePoint authentication..."

try {
    $response = $client.GetAsync($TestEndpoint).Result
    $status = $response.StatusCode.value__

    if ($status -eq 200) {
        Write-Output "SUCCESS: Authenticated"
        $content = $response.Content.ReadAsStringAsync().Result
        $content | Out-File "auth-test-response.xml"
        Write-Output "Saved response to auth-test-response.xml"
    }
    elseif ($status -eq 401) {
        Write-Output "FAIL: 401 Unauthorized"
    }
    else {
        Write-Output "Unexpected status code: $status"
    }
}
catch {
    Write-Output "Error:"
    Write-Output $_.Exception.Message
}

$LibraryTest = "$SiteUrl/_api/web/GetFolderByServerRelativeUrl('Shared Documents')/Folders"
$response = $client.GetAsync($LibraryTest).Result
$status = $response.StatusCode.value__
Write-Output "Library status: $status"
$response.Content.ReadAsStringAsync().Result | Out-File "library-test.json"

Write-Output "Enumerating channel folders..."

$rootUrl = "$SiteUrl/_api/web/GetFolderByServerRelativeUrl('Shared Documents')/Folders"
$rootResponse = $client.GetAsync($rootUrl).Result
$rootJson = $rootResponse.Content.ReadAsStringAsync().Result

$rootJson | Out-File "channels-raw.json"
Write-Output "Saved channels-raw.json"

