#!/bin/bash

if [ "$1" == "plik" ]; then
    touch "$2"
    echo "Utworzono plik $2"
elif [ "$1" == "katalog" ]; then
    mkdir "${2:-"plik.txt"}"
    echo "Utworzono katalog ${2:-"plik.txt"}"
else
    echo "Nieznana akcja."
fi

for arg in "$@"; do
    echo "ARgument: $arg"
done

for (( i=$#; 1>0; i--)); do
    echo "Argument $i"
