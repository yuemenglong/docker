mkdir build
cd build
cmake .. -G "Visual Studio 17 2022" 


msbuild OpenCV.sln /p:Configuration=Release