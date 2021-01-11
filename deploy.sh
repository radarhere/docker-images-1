#!/bin/bash
set -ex

docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
build="multibuild/bionic_$PLATFORM"
docker tag ${build}:${TRAVIS_COMMIT} ${build}:latest
docker push ${build}:${TRAVIS_COMMIT}
docker push ${build}:latest
