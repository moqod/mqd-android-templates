#!/bin/bash
set -xe

./gradlew --no-daemon lintStageQa
./gradlew --no-daemon sonarqube -Dsonar.host.url=$SONAR_URL -Dsonar.login=$SONAR_TOKEN
