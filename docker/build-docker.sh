#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-mergexpay/mergexd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/mergexd docker/bin/
cp $BUILD_DIR/src/mergex-cli docker/bin/
cp $BUILD_DIR/src/mergex-tx docker/bin/
strip docker/bin/mergexd
strip docker/bin/mergex-cli
strip docker/bin/mergex-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
