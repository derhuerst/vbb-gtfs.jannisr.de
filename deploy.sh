#!/bin/sh

rsync -ravz --exclude '.*' --exclude deploy.sh . uberspace:~/html/vbb-gtfs.jannisr.de/
