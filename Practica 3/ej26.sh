#!/bin/bash
if [ $# -lt 1 ] ; then
	echo "Parametros invalidos"
	exit 1
fi

dirs=($*)
inexist=0
#el parametro $1 va a parar a la pos 0, el $3 a la 2 , $5 a la 4
for i in `seq 0 $((${#dirs[*]}-1))` ; do
	if [ $(($i % 2)) -eq 0 ] ; then
		if [ -e ${dirs[$i]} ] ; then
			if [ -d ${dirs[$i]} ] ; then
				echo "Es un directorio"
			elif [ -f ${dirs[$i]} ] ; then
				echo "Es un fichero"
			else
				echo "Existe pero no es fichero ni dir"
			fi
		else 
			let inexist++
		fi
	fi
done
echo "Hay $inexist elementos que no existen"
