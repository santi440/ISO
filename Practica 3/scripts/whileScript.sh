#!/bin/bash
i=0
while [ $i -lt 10 ]
do
	echo "paso $i"
	let i++
done
echo $i
