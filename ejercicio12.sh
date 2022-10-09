#!/bin/bash
#valuación de expresiones:
#(a) Realizar un script que le solicite al usuario 2 números, los lea de la entrada Standard
#e imprima la multiplicación, suma, resta y cual es el mayor de los números leídos.


echo "Hola maestro, porfavor, ingresa 2 numeros consecutivamente"
read num1 num2

echo "Multiplicacion = $((num1*num2))"
echo "Division = $((num1/num2))"
echo "Suma = $((num1+num2))"
echo "Resta = $((num1-num2))"