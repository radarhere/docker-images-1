#!/bin/bash

# Stop at any error, show all commands
set -ex

docker build --rm -t multibuild/bionic_$PLATFORM:$TRAVIS_COMMIT -f docker/Dockerfile-$PLATFORM docker/
