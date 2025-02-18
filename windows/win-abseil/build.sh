cmake .. -G "Visual Studio 17 2022"

MSBuild absl.sln /p:Configuration=Debug

MSBuild absl.sln /p:Configuration=Release

