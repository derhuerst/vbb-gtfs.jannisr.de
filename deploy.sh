#!/bin/sh

rsync -rvz --checksum --exclude '.*' --exclude deploy.sh . elm:/var/www/vbb-gtfs.jannisr.de/
