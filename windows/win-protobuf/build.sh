cmake .. -G "Visual Studio 17 2022" -Dprotobuf_BUILD_TESTS=OFF -Dprotobuf_MSVC_STATIC_RUNTIME=OFF

cmake --build . --config Debug -j

cmake --build . --config Release -j
