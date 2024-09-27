#!/bin/bash
if [ $# -ne 1 ]
then
	echo "Falta una extension"
	exit 1
fi

echo "Usuario : cant con extension $1" > reportes.txt
for i in  $(cut -d ":" -f 1,6 /etc/passwd | grep "/home")
do
	usuario=$( echo $i | cut -d ":" -f 1 )
	directorio=$( echo $i | cut -d ":" -f 2 )
	if [ -d $directorio ] ; then
		cant=$( ls -R $directorio | grep   "$1"  | wc -l ) 
		if [ $cant -gt 0 ] ;then 
			echo "$usuario : $cant " >> /home/iso/practica-shell-script/reportes.txt
		fi
	fi
done
exit 0 
