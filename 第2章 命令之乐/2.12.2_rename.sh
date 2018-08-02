#! /bin/bash
# 重命名当前目录下的jpg和png图片,结果为image-1.jpg等。

count=1;
for img in *.jpg *.png
do
# ${VAR%.*}  含义：从右向左匹配，从$VR中删除位于%右侧的通配符匹配到的字符串
# 对文件名进行解析并获取文件扩展名
new=image-$count.${img##*.}
mv "$img" "$new" > /dev/null

if [ $? -eq 0 ]
then
echo "Renaming $img to $new."
let count++
fi
done
