# GPG-Passphrase-Cracker

Este es un script de Bash diseñado para realizar un ataque de fuerza bruta en un archivo cifrado con GPG (GNU Privacy Guard) utilizando un diccionario de contraseñas. El script prueba contraseñas del diccionario para descifrar el archivo y verifica si la contraseña es correcta.

## Uso

1. Coloca el archivo cifrado que deseas descifrar en la misma carpeta que el script.
2. Crea un diccionario de contraseñas en un archivo de texto llamado `diccionario`, donde cada línea contiene una contraseña potencial.
3. Ejecuta el script `crack-gpg.sh`.

El script probará las contraseñas del diccionario una por una hasta que encuentre la contraseña correcta o agote todas las opciones.

## Requisitos

- Debes tener GPG (GNU Privacy Guard) instalado en tu sistema.

## Notas

- El script imprimirá la contraseña encontrada y el contenido descifrado si es exitoso.
- Si no se encuentra la contraseña en el diccionario, mostrará un mensaje indicando que la contraseña no se encontró.

**¡Importante!**: Este script se proporciona solo con fines educativos y de prueba. No lo utilices para fines ilegales o no éticos, y ten en cuenta las leyes y regulaciones locales sobre la privacidad y la seguridad de los datos.

## Licencia

Este proyecto se distribuye bajo la [Licencia MIT](LICENSE).
