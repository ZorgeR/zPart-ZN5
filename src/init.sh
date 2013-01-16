#!/bin/sh

# zPart - Zorge.R - motofan.ru - 2010
# small disk part utility

showNotify "zPart" "Starting..." 1 1

zpdir=${0%/*}
if [ ! -d /ezxlocal/zPart/1.2 ]
then
	rm -R /ezxlocal/zPart
	mkdir /ezxlocal/zPart
	cp -R $zpdir/content/* /ezxlocal/zPart
	chmod 777 /ezxlocal/zPart/* -R
fi

sleep 1s

/ezxlocal/zPart/start.zPart&
