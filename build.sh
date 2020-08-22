#!/bin/bash

# Stop at any error, show all commands
set -ex

echo "BEFORE UPDATE"
docker --version
echo "TORCHA"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "TORCHB"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
echo "TORCHC"
sudo apt-get update
echo "TORCHD"
apt-cache policy docker-ce
echo "TORCHE"
sudo apt-get install -y docker-ce
echo "TORCHF"

echo "FINISHED UPDATE 2"
docker --version
docker build --rm -t multibuild/xenial_$PLATFORM:$TRAVIS_COMMIT -f docker/Dockerfile-$PLATFORM docker/
