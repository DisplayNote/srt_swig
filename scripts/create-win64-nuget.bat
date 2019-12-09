rem Bundle CI NuGet package for VS2015 Win64 Release only build (true package should contain multi-arch composite output)
@echo off

IF "%PLATFORM%"=="x64" (
    IF "%VS_VERSION%"=="2015" (
        IF "%CONFIGURATION%"=="Release" (
            nuget pack .\scripts\nuget\SRT.Library.TempDevId\SRT.Library.TempDevId.nuspec -version %APPVEYOR_BUILD_VERSION%
            appveyor PushArtifact SRT.Library.TempDevId.%APPVEYOR_BUILD_VERSION%.nupkg
            exit 0
        )
    )
) 
