#!/bin/bash
echo "Introduce numeros"
read num1
read num2
if [ $1 -ne "" ]; then
	if [ $2 -ne "" ] ; then
		select operacion in suma resta multiplicacion division salir
		do
			case $operacion in
			"suma")
			        resultado=$(( $num1+$num2 ))   
			;;
			"resta")
				resultado=$(( $num1-$num2 ))
			;;
			"multiplicacion")
				resultado=$(( $num1*$num2 ))
			;;
			"division")
				resultado=$(( $num1/$num2 ))
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
	fi
fi
