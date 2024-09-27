#!/bin/bash
if [ $# -eq 2 ] ; then
	select operacion in suma resta multiplicacion division salir
	do
		case $operacion in
		"suma")
		        resultado=$(( $1+$2 ))   
		;;
		"resta")
			resultado=$(( $1-$2 ))
		;;
		"multiplicacion")
			resultado=$(( $1*$2 ))
		;;
		"division")
			resultado=$(( $1/$2 ))
		;;
		"salir")
			break 
		;;
		*) 
			echo "Syntax Error"
		;;
		esac
	echo $resultado
	done
else
	echo "Parametros debe ser mayor a 2"
	exit 1
fi
