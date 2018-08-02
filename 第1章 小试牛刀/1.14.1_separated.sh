#! /bin/bash

data="name,sex,location,birthday"
# 将原IFS值保存，以便用后恢复
oldIFS=$IFS
# !!!----!!! 书中此处印刷错误
IFS=$','
for item in $data
do
    echo Item:$item
done

IFS=$oldIFS
