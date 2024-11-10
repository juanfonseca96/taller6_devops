#!/bin/bash
echo "Ingrese el primer número:"
read num1

echo "Ingrese el segundo número:"
read num2

if [ "$num2" -eq 0 ]; then
  echo "No se permite la división por cero"
else
  if (( num1 % num2 == 0 )); then
    echo "Divisible"
  else
    echo "No divisible"
  fi
fi
