#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Parametros debe ser igual a 1"
	exit 1
fi
while [ $(who | grep -w "$1" | wc -l) -ne 1 ]; do
	sleep 10
done
echo " El usuario $1 logeado en el sistema"
