#!/bin/bash

function gcd {
    if [[ $1 -eq $2 ]]
    then echo "GCD is $1"
    else 
        if [[ $1 -gt $2 ]]
        then gcd $(($1 - $2)) $2
        else gcd $(($2 - $1)) $1
        fi
    fi
}

echo "Введите два числа через пробел: "
read num1 num2
gcd $num1 $num2