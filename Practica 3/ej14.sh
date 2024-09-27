#!/bin/bash
if [ $# -ne 3 ] ; then
	echo "Parametros invalidos"	
	exit 1
fi
if [ -d $1 ] ; then
	cd $1
	echo "Me movi a `$1`"
	if [ $2 == "-a" ] ; then
		for elem in `ls`
		do
			echo $elem 
			mv $elem $elem$3   	
		done
	elif [ $2 == "-b" ] ; then
		for elem in `ls`
		do
			mv $elem $3$elem 
		done
	else
		echo "Parametro no conocido"
		exit 1
	fi
else
	echo $1 "No es un directorio valido "
	exit 1
fi
