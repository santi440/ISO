#!/bin/bash
echo $*
for i in {1..3}; do
  echo $i
  case $i in  
    "uno")
       echo "es uno"
    ;;
    "dos") 
       echo "es dos"
    ;;
    "tre")
       echo "escribi bien"
    ;;

    *) 
      echo "No se"
    ;;
  esac
done
