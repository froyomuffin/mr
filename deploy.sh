#!/bin/bash

INPUT=$1

case $INPUT in
	test)
		TARGETDIR="/var/www/test/"
		;;
#	live)
#		TARGETDIR="/var/www/"
#		;;
	*)
		echo "Usage: ./deploy.sh <test | live>"
		;;
esac

cp -p -r -u ./content/ $TARGETDIR

