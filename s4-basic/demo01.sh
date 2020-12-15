#!/bin/bash
#Numero aleatorio  entre 0 - 32767
PASSWORD="${RANDOM}"
echo "${PASSWORD}"

#Ocupando segundos
PASSWORD=$(date +%s)
echo "${PASSWORD}"

#Ocupando nanosegundos
PASSWORD=$(date +%s%N)
echo "${PASSWORD}"


#Ocupando sha256sum
PASSWORD=$(date +%s | sha256sum | head -c32)
echo "${PASSWORD}"

#Agregando un carcter especial
SPECIAL_CHAR=$(echo "$%&/(^[)%*+-¿!" | fold -w1 | shuf | head -c1)
PASSWORD=$(date +%s | sha256sum | head -c32)
echo "${PASSWORD}${SPECIAL_CHAR}"
