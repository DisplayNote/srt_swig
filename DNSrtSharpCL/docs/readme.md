# DisplayNote's class library project to create customized SRTSHARP's nuget package


Class library to create custom srtsharp nuget package:

* Current version: v1.0.9
* Based on: https://www.nuget.org/packages/SrtSharp/*

## Prerequisites:
* Clone https://github.com/DisplayNote/srt_swig/tree/master-swig
* Run required platform scripts. In our case Windows + Android ones. (Don't forget to run Android script within Windows WSL linux environment.)

a) https://github.com/DisplayNote/srt_swig/blob/master-swig/scripts/build-windows.ps1
b) https://github.com/DisplayNote/srt_swig/blob/master-swig/scripts/build-android/build-android

## Steps

1.- Create nuget architecture scaffolding:
ref folder to provide compile time assembly. within sub-folders named 
```shell
{platform}-{architecture}\lib\{framework}
```
 or
```shell
 {platform}-{architecture}\native 
```
And include previously gathered files from running required platform scripts.
2.- Add C++ srt header files in sources folder.
(Make sure overwriting any header file in sources folder if changes in srt_swig header files)

3.- Configure .csproj, .props, .targets and .nuspec files.

## Install / Uninstall

To install nuget packages with Package Manager Console:
Go to Tools >> Nuget Package Manager >> Package Manager Console. And then run:

```shell
Install-package DNSrtSharp
```
or uninstall:
```shell
Uninstall-package DNSrtSharp
```
You can also configure a local package source folder:
Go to Tools >> Options >> Nuget Package Manager >> Package sources. 
Add a local folder and then you'll be able to manage project or solution nuget packages as usual setting package source selector to All or LocalPackages.

## Resources

* https://learn.microsoft.com/en-us/nuget/create-packages/supporting-multiple-target-frameworks#architecture-specific-folders
* https://learn.microsoft.com/en-us/nuget/reference/target-frameworks#supported-frameworks
* https://learn.microsoft.com/en-us/nuget/quickstart/create-and-publish-a-package-using-visual-studio?tabs=netcore-cli
* https://learn.microsoft.com/en-us/nuget/consume-packages/install-use-packages-powershell
* https://learn.microsoft.com/en-us/dotnet/core/rid-catalog
---
* https://nuget.info/packages/SrtSharp/1.5.1.10039-alpha
* https://stackoverflow.com/questions/52397501/nuget-references-to-assemblies-in-runtimes-folder-not-added