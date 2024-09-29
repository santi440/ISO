#!/bin/bash
# multiplica los elementos de un arreglo

num=(10 5 6 2 1)
acumulador=1

for i in ${num[*]}; do
	acumulador=$(( $acumulador * $i ))
done
echo $acumulador
