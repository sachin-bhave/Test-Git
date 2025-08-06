#!/bin/bash
BD1=$(date -d 'yesterday' +'%Y/%m%b')
H=`hostname`
cd /apache-tomcat-9.0.90/logs

find . -type f -name "*.log" -size +20G -newermt "$(date +%Y-%m-%d)" -exec gzip {} \; -exec /usr/local/bin/aws s3 cp  {}.gz s3://atom-server-logs/$BD1/$H/ \;

echo " File is successfully gz & copy to respective S3 bucket "
