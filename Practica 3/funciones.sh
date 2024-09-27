#!/bin/bash

#Existen dos maneras de declarar funciones

function imprimir {
	echo "Print..."
	echo $*
}

borrar() {
	echo "Presiona ENTER y borro la Pantalla" 
	read
	clear
}
v1=213
imprimir 12 1 "aaaa" $v1
borrar
