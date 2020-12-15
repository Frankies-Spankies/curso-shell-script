#!/bin/bash

ROOT='0'
NOT_ROOT='1000'
USER_NAME=$(id -un)

#El operador = si esta dentro de [[ expression ]] sera tomado 
#como operador logico de igualda y no de asignacion

if [[ "${USER_NAME}" = 'root' ]]
then 
    echo "Eres un bacalao" 
fi

#echo se ejecuta de manera exitosa, o el if se ejecuta de manera exitorsa por eso siempre 
#se ejecuta esta linea
if [[ "${?}" -ne '1' ]]
    then echo "Te ejecutaste exitosamente "
fi

echo "Your username is ${USER_NAME}"

exit 0