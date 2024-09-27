#!/bin/bash
if [ $# -ne 1 ] ; then
	echo "Minimo de parametros es 1"
	exit 1
fi

if [ -e $1 ] && [ -d $1 ] ; then
	cant=0
	cd $1
	for i in $(ls) ; do
		if [ -f $i ] && [ -r $i ] && [ -w $i ] ; then
			((cant++))
		fi
	done
	echo "hay $cant archivos que puedo leer y ejecutar ahi"
else
	echo "No se donde queda eso"
	exit 4
fi
