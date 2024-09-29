#!/bin/bash
#PILA

pila=()

push() {
	if [ $# -eq 1 ]; then 
		pila=(${pila[*]} $1)
	fi
}

pop(){
	if [ ${#pila[*]} -gt 0 ]; then
		ultimo=${pila[${#pila[*]}-1]}
		unset pila[${#pila[*]}-1]
		return $ultimo	
	fi
}

lenght(){
	echo ${#pila[*]}
}

print(){
	echo ${pila[*]}
#	for i in ${pila[*]}
#	do
#		echo $i
#	done
}

echo "Pusheando..."
for i in {0..9}
do
	push $i
done

echo "Pops... "
for i in {0..2}
do
	pop
	echo $?
done
echo "Tamaño"
lenght

echo "pila:"
print



