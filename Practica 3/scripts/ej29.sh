#!/bin/bash

verArchivo(){
	if [ $# -ne 1 ] ; then
		echo "Minimo 1 parametro"
		exit 1
	fi
	for i in ${array[*]} ; do
		if [ $i ==  $1 ] ; then
			cat /home/$i
			return
		fi
	done
	echo "Archivo no encontrado"
	exit 5
}

cantidadArchivos(){
	echo ${#array[*]}
}

borrarArchivo(){
	if [ $# -ne 1 ] ; then
		echo "Parametros minimos 1"
		exit 1
	fi
	for i in `seq 0 $((${#array[*]}-1))` ; do
		if [ ${array[$i]} == $1 ] ; then
			echo "Quieres eliminarlo logicamente?"
			read eleccion
			if [ $eleccion == "Si" ] ; then
				echo "Eliminado del arreglo"
				unset array[$i]
			elif [ $eleccion == "No" ] ; then
				echo "Eliminando del arreglo y fisicamente"
				rm /home/${array[$i]}
				unset array[$i]
			else
				echo "no hice nada"
			fi
		fi
	done
}

array=($( ls /home | grep ".doc" ))

echo ${array[*]}
verArchivo otro.doc
cantidadArchivos
borrarArchivo otro.doc
echo ${array[*]}
