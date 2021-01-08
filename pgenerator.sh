#!/bin/bash

# Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
purple="\033[0;35m"
cyan="\033[0;36m"
cafe="\033[0;33m"
fiuscha="\033[0;35m"
blue="\033[1;34m"
tp="\e[0m"

echo -e "$red"
echo -n "Parola Üreticisine Hoşgeldiniz! Parolanızın Kaç Basamaklı Olmasını İstersiniz: "
read n && [[ $n =~ ^(""|"0"|" ")$ ]]  &&  { echo "0 Olamaz :D" ; exit 1 ; }
echo -e "$green Şifreniz: $purple \n"
 cat /dev/random | tr -dc 'a-zA-Z' | fold -w $n | head -n 1

