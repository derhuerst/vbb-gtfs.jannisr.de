#!/bin/sh

rsync -ravz --exclude '.*' --exclude deploy.sh . root@cedar.jannisr.de:/var/www/vbb-gtfs.jannisr.de/
