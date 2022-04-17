#!/bin/bash

LATEST_URL=$(curl -Ls -o /dev/null -w %{url_effective} https://github.com/obsidianmd/obsidian-releases/releases/latest)

echo $LATEST_URL

LATEST_OBSIDIAN_VERSION=$(echo $LATEST_URL | grep -oP 'releases/tag/v\K(.*)')

echo $LATEST_OBSIDIAN_VERSION

LATEST_SNAP_DOWNLOAD_URL="https://github.com/obsidianmd/obsidian-releases/releases/download/v${LATEST_OBSIDIAN_VERSION}/obsidian_${LATEST_OBSIDIAN_VERSION}_amd64.snap"

echo $LATEST_SNAP_DOWNLOAD_URL

cd ~/bin

wget $LATEST_SNAP_DOWNLOAD_URL 





