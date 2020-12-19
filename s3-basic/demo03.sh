#!/bin/bash

#Lee desde el prompt l datos de usuario
read -p 'Ingresa username de usuario: ' USER_NAME
read -p 'Ingresa nombre de usuario: ' COMMENT
read -p 'Ingresa password de usuario: ' PASSWORD

#Crea usuarion con useradd
#Se pone la variable COMMENT entre "" ya que como se espera un nombre tenga mas de una palabra
#Ponenrlo entre comillas asegura todo el string sea tomado como un solo argumento
useradd -c "${COMMENT}" -m ${USER_NAME}

#Asigna la contraseña 
echo "${PASSWORD}" | passwd --stdin ${USER_NAME}

#Forza a cambiar contraseña en el primer login
passwd -e ${USER_NAME}