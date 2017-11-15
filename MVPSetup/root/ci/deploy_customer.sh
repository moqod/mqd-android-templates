#!/bin/bash
set -xe

curl --silent --show-error --fail -X PUT -F 'app=@./app/build/outputs/apk/prod/release/app-prod-release.apk' -F 'custom_branch=customer' #https://u2.getupdraft.com/api/app_upload/545377cb890348668e2f606c46d09631/d7ec4465fbec489ab12c2ac4a9e363b1/
