#!/bin/sh

if ! [ -d nextcloud-v ]; then
  mkdir -p nextcloud-v
fi
cd nextcloud-v

helm package my-nextcloud
