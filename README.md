# chromium-android-build

### Run Chromium commands on docker
- Build Chromium for Android on docker ubuntu 14.04
- [Checking out and building Chromium for Android](https://chromium.googlesource.com/chromium/src/+/master/docs/android_build_instructions.md)
```bash
$ ./run_on_docker.sh $CHROMIUM_DIR
```



### Build docker image
- Built by rocker
- [Docker Hub](https://hub.docker.com/r/amoseui/chromium-android-build)
- https://github.com/grammarly/rocker
```bash
$ rocker build --var CHROMIUM_DIR="/Users/amoseui/chromium" .
```
