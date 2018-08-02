#! /bin/bash
# -x启动跟踪调试shell脚本,能打印出所执行的每一行命令及当前状态。

DEBUG() {
    # echo $_DEBUG
    # $@	传递给脚本或函数的所有参数。
    # 被双引号(" ")包含时，
    # "$*" 会将所有的参数作为一个整体，以"$1 $2 … $n"的形式输出所有参数；
    # "$@" 会将各个参数分开，以"$1" "$2" … "$n" 的形式输出所有参数。

    # : 告诉shell不要进行任何操作
    # [ "$_DEBUG" == "on" ] && $@ || :
    # 如果传进来的值是on，就输出，否则什么也不干。
    if [ "$_DEBUG" = "on" ]; then
        $@
    fi
}

for i in {1..6}
do
#set -x
DEBUG echo $i
#+x禁止调试
#set +x
done
echo "exec end."

