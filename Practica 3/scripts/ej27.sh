#!/bin/bash

#funciones
inicializar() {
	array=()
}

agregar_elem(){
	if [ $# -ne 1 ] ; then
		echo "Pasame un solo parametro"
		exit 1
	fi
	array=(${array[*]} $1 )
}

eliminar_elem(){
	if [ $# -ne 1 ] ; then
		echo "Pasame una posicion del arreglo"
		exit 1
	fi
	if [ $1 -ge 0 ] && [ $1 -lt ${#array[*]} ] ; then
		unset array[$1]
	else
		echo "Pos no valida"
	fi
}

longitud(){
	echo "La longitud es ${#array[*]}"
}

imprimir(){
	echo ${array[*]}
}

inicializar_Con_Valores(){
	if [ $# -ne 2 ] ; then
		echo "pasame bien los parametros"
		exit 1
	fi
	inicializar
	for i in `seq 0 $(($1 -1))`; do
		array=(${array[*]} $2)
	done
}
echo "Vector Vacio"
inicializar
imprimir
longitud

echo "Prueba de agregar"
agregar_elem 1
agregar_elem 2
agregar_elem 3
agregar_elem 4
agregar_elem 5
imprimir
longitud

echo "Prueba de eliminar"
eliminar_elem 0
imprimir
longitud

echo "Prueba de inicializar con valores"
inicializar_Con_Valores 3 2
imprimir
longitud
