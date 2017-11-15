#!/bin/bash
set -xe

curl --silent --show-error --fail -X PUT -F 'app=@./app/build/outputs/apk/stage/qa/app-stage-qa.apk' -F 'custom_branch=develop' #https://u2.getupdraft.com/api/app_upload/41669dc093ea4fcb80d8027f102546c5/d7ec4465fbec489ab12c2ac4a9e363b1/
#./gradlew --no-daemon crashlyticsUploadDistributionStageQa
