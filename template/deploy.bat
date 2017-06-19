rem Script for deploying on an actual HoloLens device.
rem Use WinAppDeployCmd list to find GUID
rem To run in the emulator, use the web tools (second last button from the bottom) and upload the appx there, or use the REST API
WinAppDeployCmd uninstall -file app.appx -g 34303332-c8d0-45bd-119f-54ea5fbd3d97
WinAppDeployCmd install -file app.appx -g 34303332-c8d0-45bd-119f-54ea5fbd3d97