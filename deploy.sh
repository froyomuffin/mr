#!/bin/bash

INPUT=$1

case $INPUT in
	test)
		TARGETDIR="/var/www/mr/"
		;;
#	live)
#		TARGETDIR="/var/www/"
#		;;
	*)
		echo "Usage: ./deploy.sh <test | live>"
		exit 1
		;;
esac

sudo mkdir -p $TARGETDIR
sudo cp -r -u content/* $TARGETDIR

