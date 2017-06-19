Project template for getting started

# First Time Setup

Make sure you have `C:\Program Files (x86)\Windows Kits\10\bin\x86` (or similar) added to your PATH variable in order for the scripts to work. You need LDC to compile your project. If you have Visual Studio 2017 or above you need to install the UWP/WinRT with C++ package with the Visual Studio installer.

## Change default values

Modify `dist/AppxManifest.xml` to set your App name, ID, description and Publisher name. If you change the exe name or add resources/files that can be accessed from the exe you need to modify the `dist/files.txt` file.

## Compile once

Run `build.bat` to make sure that compilation works first.

## [optional] Generating a key (or copy an existing one)

Run this if you want to package your application for deploying to an emulator (Windows Phone or HoloLens) or to an actual device. Note that Windows Phone is not currently supported until ARM .exe generation is implemented into a D compiler, however you can deploy to a HoloLens which is a 32-bit x86 device. Make sure the `--arch` option inside build.bat is set to x86 if you target 32-bit.

* Edit the dist\AppxManifest.xml and change <Identity Publisher=""> to yourself, then copy the new Publisher into makecert.ps1
* Run `makecert.ps1` with PowerShell as Administrator
* A unsafecert.pfx file should now be generated which will allow you to sign packages with your Publisher

## [optional] Preparing for deploying to a device

Make sure you generated a key before doing this as described above.

Your device needs to have developer mode enabled for this to work.

First you need to find out the GUID of your device by plugging your device into your PC and typing `WinAppDeployCmd list` in a cmd. Once you have obtained the GUID of your device open `deploy.bat` and replace the two placeholder GUIDs with your GUID.

## Installing locally

_Make sure you built the app once before running._

To run a Windows Store app you have to install it. Run `register.ps1` with PowerShell to do this. Once you have done this you don't need to do this again.

The app should appear in your windows shell shortly after where you can run it from. To be able to access it quicker when making changes it is recommended to pin the app to your taskbar.

If registering fails because it is already installed you need to remove the existing app before installing or change the Identity Name in the AppxManifest.xml

# Applying changes

## Running locally

After changing the code you can simply recompile the project by running `build.bat` again. You need to close all running instances of your app before doing so, so the exe in the package can be replaced. To run the updated version you can simply start the locally installed package again.

## Generating a package

You need to generate a .appx file before you can deploy the application to a device or emulator. For this you can run `package.bat` which will generate a `app.appx` file and sign it with `unsafecert.pfx` which you can generate as described in the section above.

### Deploying to a device

To deploy the package to a physical device you can run your modified `deploy.bat` to remove and reinstall your app. Make sure you prepared the `deploy.bat` as described above.

### Running in an emulator

_In the future this might be easier by running a script that uploads and runs the app using the REST API, possibly even from dub._

Open the device portal of the emulator by clicking the globe/settings icon at the bottom of the sidebar. Navigate to System/Apps in the sidebar in the browser, you should see a page where you can install an app. You can take your generated appx file and upload it here and click deploy.

# Debugging the App

If you run into crashes without a error message you need to attach a debugger as there is no console output. Use Visual Studio to debug/attach to your app while it is running. If your app crashes while starting up and there is no opportunity to attach you need to wait before running your code. The recommended way to do this is by showing a Win32 MessageBox before startup. You might put

```d
MessageBoxA(null, "Starting".ptr, null, MB_ICONEXCLAMATION);
```

at the start of your run function for this. This will allow you to attach to your app and once you are attached you can hit OK to continue execution and get some crash information/stacktrace.

The output window will show debug prints from DWinRT or custom calls to `Debug.Write` / `Debug.WriteLine`.

Functions in interfaces don't have a convenience function attached as you need to first call QueryInterface on the COM object returned by the WinRT API. You may cast the interface to the runtimeclass (most of the time this is simply the interface name without the I at the start) and then make use of the convenience functions. If you need to manually call the interface functions you will have to use the `abi_`, `get_`, `set_`, `add_` and `remove_` functions which return a HRESULT representing the success of the operation. To check for a successful run you can use `Debug.OK(...);` to do so which will raise an exception if invalid and provide some additional debug information inside the debug output window.