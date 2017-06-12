rem Builds the application & updates the dist folder so the local version can be rerun without needing to repackage
dub build --arch=x86 --compiler=ldc2 && copy dwinrt.exe dist && copy dwinrt.pdb dist