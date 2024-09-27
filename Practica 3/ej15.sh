#cut
# Imprime las partes seleccionadas de cada linea de su entrada estandar/archivo
# opciones
# -s: no muestra lineas que no tengan delimitador
# -b: recibe una lista de bytes y solo toma estos
# -c: recibe una lista de caracteres y solo selecciona de esos
# -f: recibe una lista de campos y selecciona de ellos
# -d: recibe un delimitador por el cual se separan las columnas

cut -d "," -f 1 data.txt => toma la primera columna,cada columna esta separada por coma
cut -c 1-5 lista.txt => toma los primeros 5 caracteres de cada linea

