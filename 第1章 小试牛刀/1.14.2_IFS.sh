#! /bin/bash
# 利用IFS打印用户及默认shell

line="root:x:0:0:root:/root:/bin/bash"
oldIFS=$IFS
IFS=":"
count=0
for item in $line
do
    echo $line
    [ $count -eq 0 ] && user=$item
    [ $count -eq 6 ] && shell=$item
    let count++
done

IFS=$oldIFS
echo $user\'s shell is $shell.
