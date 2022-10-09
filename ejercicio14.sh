#!/bin/bash

# Renombrando Archivos: haga un script que renombre solo archivos de un directorio pasado como parametro agregandole una CADENA, contemplando las opciones: 
# “-a CADENA”: renombra el fichero concatenando CADENA al final del nombre del
# archivo
# “-b CADENA”: renombra el fichero concantenado CADENA al principio del nombre
# del archivo
# Ejemplo:
# Si tengo los siguientes archivos: /tmp/a /tmp/b
# Al ejecutar: ./renombra /tmp/ -a EJ
# Obtendré como resultado: /tmp/aEJ /tmp/bEJ
# Y si ejecuto: ./renombra /tmp/ -b EJ
# El resultado será: /tmp/EJa /tmp/EJb

if [ "$#" -ne 3 ]
then
    echo "La cantidad de parametros es incorrecta"
fi
if [ ! -d $1 ]
then
    echo "El directorio no existe"
fi
if [ ! -f $3 ]
then
    echo "El tercer parametro es nulo"
fi

case $2 in
    "-a")
        for i in `ls $1`; do
            mv $1/$i $1/$i$3
        done
    ;;
    "-b")
        for i in `ls $1`; do
            mv $1/$i $1/$3$i
        done
    ;;
    *)
        echo "El segundo parametro debe ser -a o -b"
        exit 4
    ;;
esac