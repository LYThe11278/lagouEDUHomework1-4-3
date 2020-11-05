#!/bin/sh

echo 'insert data into user_info 。。。'

yesterday=`date -d 'last day' +'%Y-%m-%d'`

/opt/lagou/servers/hive-2.3.7/bin/hive -e "insert into mydb.user_info  select count(distinct id) as active_num, to_date(click_time) as act_date  from mydb.user_clicks where to_date(click_time) = '$yesterday' group by  to_date(click_time);"
