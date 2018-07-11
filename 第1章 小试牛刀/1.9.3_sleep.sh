#! /bin/bash
#Filename：sleep.sh
#使用tput和sleep延时输出计时。

#-n 输出之后不换行
echo -n count:
#sc 存储光标位置
tput sc

count=0;
while true;
do
if [ $count -lt 10 ];
then let count++;
sleep 1;
tput_rc() { 
    将信息显示到 stdout 中。
    显示了信息之后，光标必须返回到使用 tput sc 保存的原始位置。
}
tput rc
# 清空光标位置到行位的所有内容
tput ed
echo -n $count;
else exit 0;
fi
done
