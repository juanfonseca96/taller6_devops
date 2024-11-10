#!/bin/bash
# Verifica si se pasó un directorio como argumento
if [ -z "$1" ]; then
  echo "Por favor, ingrese un directorio para generar la copia de seguridad"
  exit 1
fi

# Directorio que se va a respaldar
DIR_TO_BACKUP=$1

# Verificando si existe el directorio
if [ ! -d "$DIR_TO_BACKUP" ]; then
  echo "El directorio $DIR_TO_BACKUP no existe."
  exit 1
fi

# Fecha actual
DATE=$(date +'%Y-%m-%d')

# Nombre del archivo de respaldo
BACKUP_NAME="backup_$DATE.tar.gz"

# Creando el archivo .tar.gz comprimido
tar -czf "$BACKUP_NAME" -C "$(dirname "$DIR_TO_BACKUP")" "$(basename "$DIR_TO_BACKUP")"

# Verificando si la copia de seguridad fue exitosa
if [ $? -eq 0 ]; then
  echo "Copia de seguridad fue creada de manera exitosa: $BACKUP_NAME"
else
  echo "Error al crear la copia de seguridad"
  exit 1
fi
