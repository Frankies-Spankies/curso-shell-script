#!/bin/bash

# Some echos
echo 'Hola'

# variables

WORD='script'

# Display variables
# Ocupar comillas dobles para interpretar las variables
echo "$WORD"

# Comillas simples si no se quiere interpretar nada
echo '$WORD'

echo "Hola shell $WORD"

# Con llaves
echo "Hola shell ${WORD}"

# Concatenando variables con texto, en este caso hay que usar llaves para separar la variable del texto
echo "${WORD}ing is fun!"

# La concatenacion de esta manera no funciona
echo "$WORDing is fun!"

# Variable nueva
ENDING='ed'

# Combinando dos variables
echo "This is ${WORD}${ENDING}."

# Reasigna valor a ENDING
ENDING='ing'
echo "${WORD}${ENDING} is fun!"

# Reasigna valor a ENDING
ENDING='s'
echo "You are going to write many ${WORD}${ENDING} in this class!"