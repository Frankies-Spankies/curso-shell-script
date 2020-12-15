#!/bin/bash
USER_NAME=$(id -un)

echo "Your user id is ${UID}"

echo "Your username is ${USER_NAME}"

if [[ ${USER_NAME} -eq 0 ]]
    then echo "Eres root"
fi