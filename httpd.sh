#!/bin/bash
service=httpd
if(($(ps aux |grep $service |grep -v grep |wc -l)>0))
then
echo "$service is running"
else
#yum install $service
service $service start
fi
