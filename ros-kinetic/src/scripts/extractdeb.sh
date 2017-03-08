#!/bin/bash -e

DIRNAME=$(dirname "$0")


containerID=$(docker run --detach ict:asd-pcl-1.8)
docker cp "$containerID:/tmp" "$DIRNAME"
chmod 775 ./tmp
rm ./tmp/setup.sh.*
#docker rm $containerID
