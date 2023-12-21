#!/bin/bash

# echo "Pierwszy argument: $1"


# suma=$(($1 + $2))

# echo "suma: $suma"
if [ $# -ne 2 ]; then
    echo "Podaj dokladnie 2 parametry"
    exit
fi


if [ "$1" == "start" ]; then
    ls -la
fi


echo "liczba parametrów: $#"

