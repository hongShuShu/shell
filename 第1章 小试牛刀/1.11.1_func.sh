#! /bin/bash

fpar(){
    echo $1, $2;
    echo "$@";
    echo "$*";
    return 0;
}

fpar 1 2 3 4

read -n 2 var
echo $var
