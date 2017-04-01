#!/bin/bash

CHROMIUM_DIR=$1

DOCKER_CMD="docker run -i -v $CHROMIUM_DIR:/home/user/chromium amoseui/chromium-android-build /bin/bash -c"

# sync
# $DOCKER_CMD "gclient sync"
# $DOCKER_CMD "gclient runhooks"

# gn gen
$DOCKER_CMD "gn gen --args='target_os=\"android\"' out/Default"

# ninja build
$DOCKER_CMD "ninja -C out/Default chrome_public_apk"

# Remove containers
# docker rm `docker ps -a -q`
