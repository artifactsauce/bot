#!/usr/bin/env bash

set -eu

# Exit if not declared
token=${token:?"[ERROR] Required to declare enviroment variable: token"}
DOCKER_USERNAME=${DOCKER_USERNAME:?"[ERROR] Required to declare enviroment variable: DOCKER_USERNAME"}
DOCKER_IMGNAME=${DOCKER_IMGNAME:?"[ERROR] Required to declare enviroment variable: DOCKER_IMGNAME"}

# Assign default value if not declared
: ${port:="80"}

docker run \
  -e LANG=ja_JP.UTF-8 \
  -e token="${token}" \
  -e port="${port}" \
  -it ${DOCKER_USERNAME}/${DOCKER_IMGNAME} \
  /bin/sh
