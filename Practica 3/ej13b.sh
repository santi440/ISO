#!/bin/bash
select comando in "Listar" "DondeEstoy" "QuienEsta"
do
	case $comando in
	"Listar")
		echo `ls `
	;;
	"DondeEstoy")
		echo `pwd`
	;;
	"QuienEsta")
		echo `who`
	;;
	*)
		echo "no encontre opcion"
	esac
	break
done 
