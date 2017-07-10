#!/bin/bash
set -xe

./gradlew --no-daemon assembleStageRelease
./gradlew --no-daemon crashlyticsUploadDistributionStageRelease
./gradlew --no-daemon assembleProdRelease
./gradlew --no-daemon crashlyticsUploadDistributionProdRelease