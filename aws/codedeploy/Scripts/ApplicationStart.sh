#!/bin/bash


echo "Application Start"
DEPLOY_LOG=/home/ubuntu/deploy.log
if [ ! -e $DEPLOY_LOG ]; then
  echo "create log file";
  touch $DEPLOY_LOG;
  chmod 666 $DEPLOY_LOG;
fi

JAR_PATH=$(ls /var/app/*.jar | cut -d " " -f1)
cd /
nohup java -jar $JAR_PATH >> $DEPLOY_LOG 2>&1 &