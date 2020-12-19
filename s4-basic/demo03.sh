#!/bin/bash
while [[ "${#}" -gt 0 ]]
do
    echo "Parametro 1: ${1}"
    echo "Parametro 2: ${2}"
    echo "Parametro 3: ${3}"
    shift 1
    echo
done