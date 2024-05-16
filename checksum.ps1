param (
    [Parameter(Mandatory=$true)]
    [string]$ver
)

Invoke-WebRequest "https://github.com/dw218192/JellyfinCinemaSearch/releases/download/$ver/Jellyfin.CinemaSearch.zip" -OutFile Jellyfin.CinemaSearch.zip
$checksum = Get-FileHash Jellyfin.CinemaSearch.zip -Algorithm MD5
Remove-Item Jellyfin.CinemaSearch.zip
Write-Host $checksum.Hash