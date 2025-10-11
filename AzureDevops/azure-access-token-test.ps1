$PersonalAccessToken = ""

$headers = @{
    Authorization = "Basic " + [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(":$($PersonalAccessToken)"))
}

Invoke-RestMethod -Uri "https://dev.azure.com/innovation0294/_apis/distributedtask/pools?api-version=6.0" -Headers $headers