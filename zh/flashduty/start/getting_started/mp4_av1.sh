#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex

name=1
ffmpeg -i $name.mp4 -c:v libsvtav1 -crf 60 -preset 4 -c:a libopus -b:a 48k $name-av1.mp4
