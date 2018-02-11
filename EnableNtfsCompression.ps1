# Enables NTFS Compression on diffrent Paths
# Hint: Run as schduled Task. Otherwise new files will not get compressed
# V1.0 Create Skript Stefan Buechler 10.02.2018

@(
    "D:\Data\Backup",
    "D:\Data\Dokumente\BBFN",
    "D:\Data\Dokumente\Buchhaltung",
    "D:\Data\Dokumente\Freizeit",
    "D:\Data\Dokumente\Knowledge",
    "D:\Data\Dokumente\Schule"
) | ForEach-Object { Get-ChildItem $_ -Recurse | Where-Object { $_.Attributes -notlike "*Compressed*" } | ForEach-Object { compact /C $_.FullName } }

