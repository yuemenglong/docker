cmake -G "Visual Studio 17 2022" ..

MSBuild.exe rnnoise.sln

MSBuild.exe rnnoise.sln /p:Configuration=Release
