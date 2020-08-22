#!/bin/bash

# Stop at any error, show all commands
set -ex

echo "TORCH"
docker --version
docker build --rm -t multibuild/xenial_$PLATFORM:$TRAVIS_COMMIT -f docker/Dockerfile-$PLATFORM docker/
