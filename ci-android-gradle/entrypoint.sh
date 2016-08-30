#!/bin/bash

set -e

if [ $RESET_ROOT_PASSWORD ]; then 
	echo "root:${RESET_ROOT_PASSWORD}" | chpasswd 
fi


if [ $# -eq 0 ]; then

/usr/sbin/sshd -D

else

/etc/init.d/ssh start
exec "$@"

fi
