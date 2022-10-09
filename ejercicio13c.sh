#!/bin/bash
#Crear un script que reciba como parámetro el nombre de un archivo e informe si el mismo existe o no, y en caso afirmativo indique si es un directorio o un archivo. En caso de que no exista el archivo/directorio cree un directorio con el nombre recibido como parámetro.

if [ "$1" ]
then
    if [ -f "$1" ]
    then
        echo "Existe"

    else
        if [ -d "$1" ]
        then
            echo "Es un directorio, no un archivo"

        else
            mkdir "$1"
            cd "$1"
            echo "Se creo el directorio: $(pwd)"
        fi

    fi
else
    echo "No ingresaste un parametro"

fi