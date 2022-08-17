#Script to grab external libraries for building these samples

# prep shared variables
$DEVENV_PLATFORM = 'x64' # alternative is x86
$FOLDER_PLATFORM = 'win64' # alternative is win32
$VS_VERSION='2015' # alternatives are 2013 - used to pick nuget package library types
nuget install cinegy.pthreads-$FOLDER_PLATFORM-$VS_VERSION -version 2.9.1.24
nuget install swigwintools -version 4.0.0