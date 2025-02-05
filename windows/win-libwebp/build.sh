mkdir build
cd build
cmake .. -G "Visual Studio 17 2022" 


msbuild WebP.sln /p:Configuration=Release