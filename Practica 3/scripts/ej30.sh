#!/bin/bash
if [ ! -d $HOME/bin ]; then
	mkdir $HOME/bin
fi
cant=0
for i in $(ls) ; do
	if [ -x $i ] ; then
		mv -v $i $HOME/bin/$i
		if [ -e $HOME/bin/$i ] ; then
			((cant++))
		fi
	fi
done
echo "Pude mover $cant archivos a $HOME/bin"
