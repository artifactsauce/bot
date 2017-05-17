#!/usr/bin/env bash

set -eu

docker run \
  -e LANG=ja_JP.UTF-8 \
  -e token="${token}" \
  -e port="${port}" \
  -it ${DOCKER_USERNAME}/${DOCKER_IMGNAME} \
  /bin/sh
