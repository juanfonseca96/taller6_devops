#!/bin/bash
mkdir -p testdir

# Creando los 10 archivos vacíos en el directorio testdir
for i in {1..10}
do
  touch "testdir/file$i.txt"
done

# Bucle para agregar texto "Hola" a cada archivo creado
for i in {1..10}
do
  echo "Hola" > "testdir/file$i.txt"
done

echo "Se han creado los 10 archivos"
