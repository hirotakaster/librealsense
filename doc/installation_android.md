# Android Installation

**Note:** Due to the USB 3.0 translation layer between native hardware and virtual machine, the librealsense team does not recommend or support installation in a VM.
The project requires two external dependencies, libusb-1.0, android-ndk.

1. Download android NDK. 
  * `wget https://dl.google.com/android/repository/android-ndk-r13-linux-x86_64.zip`
  * `unzip android-ndk-r13-linux-x86_64.zip`
  * `cd android-ndk-r13`
  * `export PATH=$PATH:$PWD`
2. update libusb submodule and build.
  * `git clone https://github.com/hirotakaster/librealsense`
  * `cd librealsense`
  * `git submodule init`
  * `git submodule update`
  * `cd android/jni/libusb/android/jni/`
  * `ndk-build`
  * `cd ../../../../jni/`
  * `ndk-build`
  * Android ndk shard library will build `android/libs/arm64-v8a/` directory. librealsense1.0.so, libusb1.0.so is needed.
