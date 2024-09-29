#!/bin/bash 
# continue salta la iteraccion actual y pasa a la siguiente
# recibe un parametro N que determina cuantos niveles de bucle se suben
# por ejemplo un for que tenga adentro un while continue 2 pasa al siguiente de for

i=0
while [ $i -lt 4 ]
do
	let i++
	if [ $i -eq 2 ]; then
		continue 2
	fi
	echo "HOLA $i"
done
