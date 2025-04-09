# Pfade zu den XML-Dateien festlegen
$PolicyName = "WDAC_Policy"
$LamnaPolicy = Join-Path $env:USERPROFILE "OneDrive - Microsoft\Desktop\WDAC-TK\AllowAll.xml"
$EventsPolicy = Join-Path $env:USERPROFILE "OneDrive - Microsoft\Desktop\WDAC-TK\$PolicyName-New.xml"
$MergedPolicy = Join-Path $env:USERPROFILE "OneDrive - Microsoft\Desktop\WDAC-TK\${PolicyName}_Merged.xml"

# Merge der beiden WDAC-Policies
Merge-CIPolicy -PolicyPaths $LamnaPolicy, $EventsPolicy -OutputFilePath $MergedPolicy

Write-Host "Die beiden WDAC XML-Dateien wurden erfolgreich zusammengeführt: $MergedPolicy"
