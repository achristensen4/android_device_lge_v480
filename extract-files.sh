#!/bin/sh

set -e

export VENDOR=lge
export DEVICE=v480
./../../$VENDOR/v4xx-common/extract-files.sh $@
