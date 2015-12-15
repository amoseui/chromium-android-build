#!/bin/bash

GCLIENT_SYNC="docker run -i -w /chromium -v `pwd`/chromium:/chromium -v `pwd`/depot_tools:/depot_tools -e PATH=$PATH:/depot_tools:/chromium/src/third_party/android_tools/sdk/build-tools/23.0.0/ amoseui/chromium-android-build-osx /bin/bash -c"
$GCLIENT_SYNC "gclient sync"
$GCLIENT_SYNC "gclient runhooks"

# Remove containers
docker rm `docker ps -a -q`
