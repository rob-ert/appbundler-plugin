#!/bin/sh

CC=clang
INCLUDE="-I ${JAVA_HOME}/include -I ${JAVA_HOME}/include/darwin"
FRAMEWORK="-framework Cocoa"
SRC="src/main/objc/main.m"
DST="src/main/resources/com/bsdroot/github/appbundler/JavaAppLauncher"
SDK="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk"
ARCH="x86_64"
MIN_MAC_OSX_VERSION="10.9"

$CC -v -o $DST $FRAMEWORK $INCLUDE -arch $ARCH -isysroot $SDK -mmacosx-version-min=$MIN_MAC_OSX_VERSION $SRC
