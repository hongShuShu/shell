#! /bin/bash
#Filename password.sh
#用户输入不可见

echo -e "Enter Password:"
stty -echo
read password
stty echo
echo
echo Password read.

