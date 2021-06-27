#!/bin/bash
# author wangyingbo
# date:2021-06-26 下午 14:30


DATE=`date +%Y%m%d%H%M%S`

filename=~/Desktop/text.txt
#echo $DATE >> $filename

# 可用 https://qastack.cn/superuser/246837/how-do-i-add-text-to-the-beginning-of-a-file-in-bash
#echo '可用: task goes here 1' | cat - $filename > temp && mv temp $filename
#sed -i '1s/^/task goes here 2\n/' $filename
#sed -i '1itask goes here 3' $filename
#echo -e "可用: task goes here 4\n$(cat $filename)" > $filename



# mac shell下sed的用法  https://blog.csdn.net/weiguang1017/article/details/80345058
sed "1i\ 
$DATE
" $filename  



# 暂时不起作用：mac下sed与GNU下sed不一样 https://www.cnblogs.com/jiu0821/p/6268500.html
# 在第一行前添加字符串
#sed -i '1i添加的内容1' $filename
# 在最后一行行前添加字符串 
#sed -i '$i添加的内容2' $filename 
# 在最后一行行后添加字符串
#sed -i '$a添加的内容3' $filename