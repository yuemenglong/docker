cmake -G "Visual Studio 17 2022" ..

MSBuild.exe rnnoise.sln

MSBuild.exe rnnoise.sln /p:Configuration=Release

# ffmpeg -i a.m4a -f s16le -acodec pcm_s16le -ar 16000 -ac 1 a.pcm

# ./rnnoise_demo.exe a.pcm a_out.pcm

# ffmpeg -f s16le -ar 44100 -ac 2 -i a_out.pcm a_out.wav
