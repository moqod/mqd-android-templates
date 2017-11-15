#!/bin/bash
set -xe

./gradlew --no-daemon assembleProdRelease
./gradlew --no-daemon assembleProdDebug
