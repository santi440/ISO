#!/bin/bash

vector1=(1 2 3 4 5)
vector2=(10 9 8 7 6)

for i in `seq 0 ${#vector1[*]} ` ;do
	echo $i
	echo "La suma en la pos $i es $((vector1[1] + vector2[1]))"
done
