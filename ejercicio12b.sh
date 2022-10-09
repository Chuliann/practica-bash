#!/bin/bash
#(b) Modificar el script creado en el inciso anterior para que los números sean recibidos
#como parámetros. El script debe controlar que los dos parámetros sean enviados.

if [ "$1" ] && [ "$2" ]
then
    num1=$1
    num2=$2

    echo "Multiplicacion = $((num1*num2))"
    echo "Division = $((num1/num2))"
    echo "Suma = $((num1+num2))"
    echo "Resta = $((num1-num2))"
else 
    echo "No ingresaste 2 parametros"
fi