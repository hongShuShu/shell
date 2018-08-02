#! /bin/bash
# 检查给定的单词是否是文件中的单词

word=$1
# -q禁止产生任何输出
grep "^$1$" ./11.txt -q 
if [ $? -eq 0 ]; then
    echo $word is a dictionary word.
else
    echo $word is not a dictionary word.
fi

