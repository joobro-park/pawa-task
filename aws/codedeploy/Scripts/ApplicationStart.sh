#!/bin/bash

export DEPLOY_LOG=/home/ubuntu/deploy.log
export JAR_NAME=$(ls /var/app/*.jar | cut -d " " -f1)
nohup java -jar $JAR_NAME >> $DEPLOY_LOG 2>&1 &