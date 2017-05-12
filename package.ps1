Set-PSDebug -Trace 1
& cd dist
Remove-AppxPackage DWinRT_1.0.0.0_neutral__9nx41e4j3w2p4
Add-AppxPackage -Register .\AppxManifest.xml
& cd ..\