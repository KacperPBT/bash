#!/bin/bash

# Tworzenie zmiennych
AGE=25
echo $AGE

# zmienna tylko do odczytu
# readonly AGE
AGE=35
echo $AGE

#usuwanie zmiennych
unset AGE
echo "empty:" $AGE

#Funkcja ze zmienną globalną
AGE=44
setAGE() {
	echo "Mam lat: $AGE"
}
setAGE
echo "Tu tez mam: $AGE"

#zmienna lokalna
setnewAge() {
	local AGE=25
	echo"Mam lat $AGE"
}
AGE=40
setnewAGE
echo "CZy tu mam tez tyle lat? $AGE"

# Tablica
tablica=(1 2 3)
tablica=("sssss" "aaaaaa" "zzzzzz")
echo "${tablica}"

# Pętla
for i in "${tablica[@]}"
do
	echo "$i"
done



echo "ostatnia wartosc: ${tablica[-1]}"


echo ${tablica[*]}
unset tablica[-1]
echo ${tablica[*]}

tablica[3]="xxx"
echo ${tablica[3]}

echo ${!tablica[*]}

# Utwoeznie tablicy indeksacyjnej
declare -a tablica
tablica[1]="ssss"


# Utworzenie tablicy asocjacyjnej
declare -A rok
rok["jeden"]="pierwszy"
rok["dwa"]="drugi"
echo ${rok[*]}



text1="aaaaa"
text2="bbbb"

echo "$text1 $text2"
echo $text1 $text2 


$text1 ="${text1} ccccc"
echo $text1

text1+="ffff"
echo $text1
