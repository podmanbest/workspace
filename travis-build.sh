#!/usr/bin/env bash

#### halt script on error
set -xe

#### Build the Docker Images
if [ -n "${PHP_VERSION}" ]; then
    podman build -f ./Containerfile-${PHP_VERSION} .
fi
