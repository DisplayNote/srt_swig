rem Bundle CI NuGet package for VS2015 Win64 Release only build (true package should contain multi-arch composite output)
@echo off

rem If running in AppVeyor, only create a NuGet package on VS2015 x64 Release
IF DEFINED APPVEYOR_BUILD_VERSION (
    IF "%PLATFORM%"=="x64" (
        IF "%VS_VERSION%"=="2015" (
            IF "%CONFIGURATION%"=="Release" (
                nuget pack .\scripts\nuget\SrtSharp\SrtSharp.nuspec -version %APPVEYOR_BUILD_VERSION%-beta
                appveyor PushArtifact SRT.Library.TempDevId.%APPVEYOR_BUILD_VERSION%.nupkg
                exit 0
            )
        )
    ) 
) ELSE (
    rem probably running on a local workstation, so use the first given argument parameter as the version number and don't push or exit
    nuget pack .\scripts\nuget\SrtSharp\SrtSharp.nuspec -version %1
)