param (
    [Parameter(Mandatory=$true)]
    [int]$Length
)

$Chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()'

$CharArray = $Chars.ToCharArray()
$MaxIndex = $CharArray.Length

$PasswordChars = for ($i = 0; $i -lt $Length; $i++) {
    $Random = [System.Security.Cryptography.RandomNumberGenerator]::Create()
    $RandIndex = [System.Security.Cryptography.RandomNumberGenerator]::GetInt32(0, $MaxIndex)
    $CharArray[$RandIndex]
}
$Password = -join $PasswordChars

Write-Output $Password