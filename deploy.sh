#!/bin/sh

rsync -rav --exclude '.*' --exclude deploy.sh . uberspace:~/html/vbb-gtfs.jannisr.de/
