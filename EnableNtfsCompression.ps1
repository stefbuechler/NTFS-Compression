# Enables NTFS Compression on diffrent Paths
# Hint: Run as schduled Task. Otherwise new files will not get compressed
# V1.0 Create Skript Stefan Buechler 10.02.2018

# Paths
$Path1 = "D:\Data\Backup"
$Path2 = "D:\Data\Dokumente\BBFN"
$Path3 = "D:\Data\Dokumente\Buchhaltung"
$Path4 = "D:\Data\Dokumente\Freizeit"
$Path5 = "D:\Data\Dokumente\Knowledge"
$Path6 = "D:\Data\Dokumente\Schule"

Get-ChildItem $Path1 -Recurse | Where-Object {$_.Attributes -notlike "*Compressed*"} | ForEach-Object {compact /C $_.FullName}
Get-ChildItem $Path2 -Recurse | Where-Object {$_.Attributes -notlike "*Compressed*"} | ForEach-Object {compact /C $_.FullName}
Get-ChildItem $Path3 -Recurse | Where-Object {$_.Attributes -notlike "*Compressed*"} | ForEach-Object {compact /C $_.FullName}
Get-ChildItem $Path4 -Recurse | Where-Object {$_.Attributes -notlike "*Compressed*"} | ForEach-Object {compact /C $_.FullName}
Get-ChildItem $Path5 -Recurse | Where-Object {$_.Attributes -notlike "*Compressed*"} | ForEach-Object {compact /C $_.FullName}
Get-ChildItem $Path6 -Recurse | Where-Object {$_.Attributes -notlike "*Compressed*"} | ForEach-Object {compact /C $_.FullName}
