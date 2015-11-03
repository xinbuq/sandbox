#!/bin/sh

#if [ ! $1 ]; then
#	echo Need Key \($0 \<key\>\)
#	exit 1
#fi

#if [ ! -d google-authenticator ]; then
#	git clone https://code.google.com/p/google-authenticator/
#else
#	#(cd google-authenticator; git pull)
#	echo git pull
#fi

if [ -e gmd-cmd.o ]
then
	rm gmd-cmd.o
fi

key=$1
if [ -z "$key" ]; then
    key="<unknown>"
fi

make all KEY=$key

