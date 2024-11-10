#!/bin/bash
if [ -z "$1" ]; then
  echo "Error: Debe proporcionar un nombre de archivo como argumento"
  exit 1
fi

filename="$1"

if [ -f "$filename" ]; then
  cat "$filename"
else
  echo "Error: Archivo no encontrado."
fi
