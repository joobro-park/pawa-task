#!/bin/bash

echo "Before Install"
echo "check java exist"
if [ -z $JAVA_HOME ]; then
    apt update
    apt install -y openjdk-12-jdk
    export JAVA_HOME=/usr/lib/jvm/java-12-openjdk-amd64
fi

echo "kill old process"
JAR_PATH = $(ls /var/app/*.jar | cut -d " " -f1)
JAR_NAME = $(basename $JAR_NAME)
if [ -n JAR_NAME ]; then
    CURRENT_PID = $(pgrep -f JAR_NAME)
    if [ -n $CURRENT_PID ]; then
        kill -15 $CURRENT_PID
        sleep 5
    fi
fi
