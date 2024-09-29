#!/bin/bash
if [ $# -ne 1 ] ;then
	echo "Paramentros incorrectos"	
	exit 1
fi
if [ -e $1 ]; then	
	if [ -d $1 ]; then
		echo "Es un directorio"
	elif [ -f $1 ]; then
		echo "Es un archivo"
	else
		echo "Existe pero no es archivo ni directorio"
	fi
else
	echo "Creando un directorio con nombre $1"
	mkdir $1
fi
