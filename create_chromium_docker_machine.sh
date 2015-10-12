#!/bin/bash
docker-machine create --driver virtualbox --virtualbox-disk-size "50000" chromium
docker-machine start chromium
