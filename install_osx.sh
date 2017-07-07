#!/usr/bin/env bash
#set -xe

if [ -z "$1" ]
  then
    echo "No argument supplied, pls define one argument with Android Studio package name, like this 'Android Studio 2.3.app'"
    exit 1;
fi

DIR="/Applications/${1}/Contents/plugins/android/lib/templates/activities";

MVP_SETUP="${DIR}/MVPSetup";
MVP_ACTIVITY="${DIR}/MVPActivity";
MVP_FRAGMENT="${DIR}/MVPFragment";

if [ -a "${MVP_SETUP}" ]; then
	echo "remove old template ${MVP_SETUP}"
	rm -rf "${MVP_SETUP}"
fi;
cp -r "./MVPSetup" "${MVP_SETUP}"

if [ -a "${MVP_ACTIVITY}" ]; then
	echo "remove old template ${MVP_ACTIVITY}"
	rm -rf "${MVP_ACTIVITY}"
fi;
cp -r "./MVPActivity" "${MVP_ACTIVITY}"

if [ -a "${MVP_FRAGMENT}" ]; then
	echo "remove old template ${MVP_FRAGMENT}"
	rm -rf "${MVP_FRAGMENT}"
fi;

cp -r "./MVPFragment" "${MVP_FRAGMENT}"

