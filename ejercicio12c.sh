#!/bin/bash
#(c) Realizar una calculadora que ejecute las 4 operaciones básicas: +, - ,*, %. Esta calcu-
#ladora debe funcionar recibiendo la operación y los números como parámetros

if [ "$1" ] && [ "$2" ] && [ "$3" ]
then
    num1=$1
    num2=$2
    op=$3


    case $op in

        "suma")
            echo $((num1+num2))
        ;;
        "resta")
            echo $((num1-num2))
        ;;
        "division")
            echo $((num1/num2))
        ;;
        "multiplicacion")
            echo $((num1*num2))
        ;;


    esac
else 
    echo "No ingresaste 3 parametros, los primeros dos deben ser los numeros, el siguiente la operacion "
fi