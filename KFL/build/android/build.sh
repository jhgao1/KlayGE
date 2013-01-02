#!/bin/bash

$ANDROID_NDK/ndk-build -j 3

if [ ! -d ../../lib/android_armeabi ]; then
	mkdir ../../lib/android_armeabi
fi
cp obj/local/armeabi/libKFL_gcc.a ../../lib/android_armeabi/

if [ ! -d ../../lib/android_armeabi-v7a ]; then
	mkdir ../../lib/android_armeabi-v7a
fi
cp obj/local/armeabi-v7a/libKFL_gcc.a ../../lib/android_armeabi-v7a/

if [ ! -d ../../lib/android_x86 ]; then
	mkdir ../../lib/android_x86
fi
cp obj/local/x86/libKFL_gcc.a ../../lib/android_x86/