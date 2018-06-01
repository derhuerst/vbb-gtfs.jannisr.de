#!/bin/sh

rsync -rvz --exclude '.*' --exclude deploy.sh . root@elm.jannisr.de:/var/www/vbb-gtfs.jannisr.de/
