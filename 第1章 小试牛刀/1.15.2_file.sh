#! /bin/bash
# 文件系统参数

# -e文件是否存在
fpath="/etc/passwd"
if [ -e $fpath ]; then
echo File exists.
else
echo File don\'t exists.
fi


# test命令可以执行条件检测
var=0
if test $var -eq 0; then echo "True"; fi
