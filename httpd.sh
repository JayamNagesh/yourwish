#!/bin/bash
service=httpd
if(($(ps aux |grep $service |grep -v grep |wc -l)>0))
then
echo "$service is running"
else
service $service start
fi
