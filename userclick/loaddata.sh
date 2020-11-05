#!/bin/sh

echo 'import data from hdfs。。。'

yesterday=`date -d 'last day' +'%Y%m%d'`

/opt/lagou/servers/hive-2.3.7/bin/hive -e "load data inpath '/user_clicks/$yesterday/clicklog.dat' into table mydb.user_clicks PARTITION(dt='$yesterday');"
