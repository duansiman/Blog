#!/bin/bash

csdnArticleSize=`mysql -uroot -p blog -Ne "select count(*) from t_csdn_article"`
echo $csdnArticleSize

i=1
while (("$i" <= "$csdnArticleSize"))
do
    csdnArticleContent=`mysql -uroot -p123456 --show-warnings=false blog -Ne "select article_content from t_csdn_article where id=$i"`
    echo $csdnArticleContent > "csdn-$i"".html"
    declare -i i=$i+1
    sleep 1
done
exit 0
