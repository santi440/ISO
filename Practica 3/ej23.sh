#!/bin/bash
arreglo=(1 2 3 4 5 6 7 8 9 0)

cant=0
for i in ${arreglo[*]}; do
	if [ $(( $i %  2)) -eq 0 ]; then
		echo "$i es par"
	else 
		let cant++
	fi
done
echo "Hay $cant numeros impares"

