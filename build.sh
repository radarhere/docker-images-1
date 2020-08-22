#!/bin/bash

# Stop at any error, show all commands
set -ex

echo "TORCH"
sudo apt-get update
echo "FINISHED UPDATE"
apt-cache madison docker-ce
echo "FINISHED UPDATE 2"
docker --version
echo "TORCH INSTALL"
sudo apt-get install docker-ce
echo "FINISHED UPDATE 2"
docker --version
docker build --rm -t multibuild/xenial_$PLATFORM:$TRAVIS_COMMIT -f docker/Dockerfile-$PLATFORM docker/
