#!/bin/bash
#(a) Realizar un script que visualice por pantalla los números del 1 al 100 así como sus cuadrados.

for((i=1;i<101;i++))
do
    echo "Numero: $i, su cuadrado: $((i * i))"

done