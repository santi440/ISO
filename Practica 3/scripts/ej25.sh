#!/bin/bash
# $? = 1: parametros incorrectos
# $? = 2: tamaño mayor a mis usuarios
# agrega en un arreglo todos los usuarios del sistema pertenecientes a users
grupo=$( cat /etc/group | grep -w "users" | cut -d ":" -f 4 | tr "," " ")
#echo ${grupo[*]}

#parametros adicionales
long=$((${#grupo[*]} ))
if [ $# -eq 2 ] ; then
	if [ $1 == "-b" ] && [ $long -ne 0 ] && [ $2 -ge $(($long -1)) ] ; then
		echo  ${grupo[$2]}
	else
		echo "ERROR tam no conocido"
		exit 2
	fi
elif [ $# -eq 1 ] ; then
	if [ $1 == "-l" ] ; then
		echo "Longitud es ${#grupo[*]}"
	elif [ $1 == "-i" ] ; then
		echo "Elementos del arreglo ${grupo[*]} "
	else
		echo "Parametros incorrectos"
		exit 1
	fi
else
	echo "Parametros incorrectos"
	exit 1 
fi
