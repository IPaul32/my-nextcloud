#!/bin/sh

if ! [ -d nextcloud-v ]; then
  mkdir -p nextcloud-v
fi

cd my-nextcloud
helm package .
mv *.tgz ../nextcloud-v/
