# 使用bazelisk

set BAZEL_VS=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools
set BAZEL_VC=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC
set BAZEL_VC_FULL_VERSION=14.43.34808
set BAZEL_WINSDK_FULL_VERSION=10.0.22621.0
set HERMETIC_PYTHON_VERSION=3.12

# set BAZEL_SH=D:\env\msys2\usr\bin


# 注意，需要opencv 3.10


set http_proxy=http://127.0.0.1:10809
set https_proxy=http://127.0.0.1:10809

# 修改.bazelrc
# build:windows --repo_env=HTTP_PROXY=http://127.0.0.1:10809
# build:windows --repo_env=HTTPS_PROXY=http://127.0.0.1:10809

 # new_local_repository(
     # name = "windows_opencv",
     # build_file = "@//third_party:opencv_windows.BUILD",
-    path = "C:\\opencv\\build",
+    path = "D:\\env\\opencv\\build",
 # )



bazel build -c opt --define MEDIAPIPE_DISABLE_GPU=1 --action_env PYTHON_BIN_PATH="C:/Users/yml/AppData/Local/Programs/Python/Python312/python.exe" mediapipe/examples/desktop/hello_world

bazel build -c opt --define MEDIAPIPE_DISABLE_GPU=1 --action_env PYTHON_BIN_PATH="C:/Users/yml/AppData/Local/Programs/Python/Python312/python.exe" mediapipe/examples/desktop/selfie_segmentation:selfie_segmentation_cpu

bazel build -c opt --define MEDIAPIPE_DISABLE_GPU=1 --verbose_failures --action_env PYTHON_BIN_PATH="C:/Users/yml/AppData/Local/Programs/Python/Python312/python.exe" mediapipe/examples/desktop/selfie_segmentation:selfie_segmentation_cpu

C:/Users/yml/_bazel_yml/7mgquxo7/execroot/mediapipe/bazel-out/x64_windows-opt/bin/mediapipe/examples/desktop/hello_world/hello_world.exe



set GLOG_logtostderr=1
