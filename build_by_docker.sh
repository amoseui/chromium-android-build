#!/bin/bash

DOCKER_CMD="docker run -i -w /chromium/src -v `pwd`/chromium:/chromium -v `pwd`/depot_tools:/depot_tools -e PATH=$PATH:/depot_tools:/chromium/src/third_party/android_tools/sdk/build-tools/23.0.0/ amoseui/chromium-android-build-osx /bin/bash -c"

$DOCKER_CMD "build/gyp_chromium -DOS=android"
$DOCKER_CMD "ninja -C out/Release chrome_public_apk"

# Remove containers
docker rm `docker ps -a -q`
