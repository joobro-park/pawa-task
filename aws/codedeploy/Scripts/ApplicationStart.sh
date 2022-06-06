#!/bin/bash


echo "Application Start"
DEPLOY_LOG=/home/ubuntu/deploy.log
if [ ! -e $DEPLOY_LOG ]; then
  echo "create log file";
  touch $DEPLOY_LOG;
  chmod 666 $DEPLOY_LOG;
fi

JAR_PATH=$(ls /var/app/*.jar | cut -d " " -f1)
JAVA_BIN=$(which java)
echo $JAVA_BIN
nohup $JAVA_BIN -jar $JAR_PATH < /dev/null > $DEPLOY_LOG 2>$DEPLOY_LOG &
