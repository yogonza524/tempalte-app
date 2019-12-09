#!/usr/bin/env bash

set -e
set -o pipefail

echo $PWD

docker volume create --name gradle-6.0.1-jdk11

docker run --rm \
    -v gradle-6.0.1-jdk11:/home/gradle/.gradle \
    -v $PWD:/app \
    -w /app \
    gradle:6.0.1-jdk11 \
    gradle $@
