#!/bin/bash
#echo $#
#Al enviar * manda todos los archivos, ese caso es "*"
if [ $# -eq 3 ] ; then
	case $3 in
	"suma" | "+" )
	        resultado=$(( $1+$2 ))   
	;;
	"resta" | "-" )
		resultado=$(( $1-$2 ))
	;;
	"multiplicacion" | "*" )
		resultado=$(( $1*$2 ))
	;;
	"division" | "/" )
		resultado=$(( $1/$2 ))
	;;
	*) 
		resultado= "Syntax Error, no tengo numero u operadores correctos"
	;;
	esac
	echo $resultado
else
	echo "Parametros debe ser igual a 3"
	exit 1
fi
