#!/bin/bash
#break rompe N niveles de bucles o iteraciones por defecto 1
for i in {1..100}
do
	echo $i
	if [ $i -ge 5 ]
	then
		break  
	fi
done 
