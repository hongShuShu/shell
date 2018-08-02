#! /bin/bash
# 需求：有两个文件，数据有重复的，也有不同的，找出不同的地方。
# 博客：https://blog.csdn.net/tianmohust/article/details/6997924

# uniq可检查文本文件中重复出现的行列
#cat $1 | sort | uniq | sort > 1_sort.txt
#cat $2 | sort | uniq | sort > 2_sort.txt
#
## 使用diff命令比较文件的差异
#diff 1_sort.txt 2_sort.txt | awk ' $1 = " " ' > result.txt



comm_func () {
#参　　数：
#-1   不显示只在第1个文件里出现过的列。
#-2   不显示只在第2个文件里出现过的列。
#-3   不显示只在第1和第2个文件里出现过的列。
#例子
#comm - 12     就只显示在两个文件中都存在的行；
#comm - 23    只显示在第一个文件中出现而未在第二个文件中出现的行；
#comm - 123  则什么也不显示。

cat $1 | sort | uniq | sort > 1_sort.txt
cat $2 | sort | uniq | sort > 2_sort.txt

# 比较两个已排过序的文件
comm -23 1_sort.txt 2_sort.txt > resul1.txt
}
comm_func 1.txt 2.txt
