#!/bin/bash

# Ruta al archivo cifrado
encrypted_file="archivo_a_desencriptar.gpg"

# Ruta al diccionario
dictionary="diccionario"
i=0
# Leer cada línea del diccionario y probarla como contraseña
while IFS= read -r line; do
  # Intentar descifrar el archivo con la contraseña actual
  result=$(gpg --batch --yes --passphrase "$line" -d "$encrypted_file" 2>&1)
  i=$((i+1))
  # Comprobar si la contraseña fue correcta
  if [[ "$result" != *"failed"* ]]; then
    echo "Contraseña encontrada: $line"
    echo "Contenido descifrado:"
    echo "$result"
    exit 0  # Terminar el script si se encuentra la contraseña correcta
  else
    echo "Fallida: $i --> $line"
  fi
done < "$dictionary"

echo "Contraseña no encontrada en el diccionario."
exit 1
