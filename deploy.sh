#!/bin/sh

set -e
set -x

rsync -rvz --checksum \
	--exclude '.*' --exclude deploy.sh --exclude lib --exclude build-feed.js \
	. elm:/var/www/vbb-gtfs.jannisr.de/
