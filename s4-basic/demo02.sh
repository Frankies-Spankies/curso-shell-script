#!/bin/bash

#Toma todos los argumentos
for USER_NAME in "${@}"
do
    PASSWORD=$(date +%sN | sha256sum | head -c32)
    echo "${USER_NAME} ${PASSWORD}"
done

#Toma un solo argumento
for USER_NAME in "${*}"
do
    PASSWORD=$(date +%sN | sha256sum | head -c32)
    echo "${USER_NAME} ${PASSWORD}"
done 