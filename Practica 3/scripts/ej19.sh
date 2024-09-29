#!/bin/bash

show () {
	num=1
	for i in ${array[*]}; do
		echo $num $i
		((num++))
	done
	echo "Ingrese la opcion a ejecutar: " ; read eleccion
	script=$( echo $eleccion | cut -d " " -f 1 )
	export script
	export eleccion	
}

#carga
echo "MENU DE COMANDOS"
array=()
opcion=1
for i in $(ls) ;do
	if [ -x  $i ] ; then
		if [ -f $i ] ; then
			array[$opcion]=$i
			((opcion++))
		fi
	fi
done
array[$opcion]="Salir"

show
while [ $script -ne $opcion ] ; do
	if [ $script -le 0 ] && [ $script -gt $opcion ] ; then
		echo "Ingresa una opcion valida"
		show
	elif [ $script -eq $opcion ] ; then
		break
	else
		parametros=$(echo $eleccion | cut -d " " -f 2-)
		echo $(./${array[$script]} $parametros)
		show
	fi
done
