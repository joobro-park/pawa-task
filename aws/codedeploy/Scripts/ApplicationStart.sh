#!/bin/bash

echo "Application Start"
DEPLOY_LOG=/home/ubuntu/deploy.log
JAR_PATH=$(ls /var/app/*.jar | cut -d " " -f1)
nohup java -jar $JAR_PATH >> $DEPLOY_LOG 2>&1 &