#!/bin/bash

echo "Before Install"
echo "check java exist"
if [ -z $JAVA_HOME ]; then

#    apt update
#    apt install -y openjdk-12-jdk
#    export JAVA_HOME=/usr/lib/jvm/java-12-openjdk-amd64
      # there is no such package... shit.
    wget https://download.java.net/java/GA/jdk12.0.2/e482c34c86bd4bf8b56c0b35558996b9/10/GPL/openjdk-12.0.2_linux-x64_bin.tar.gz
    mkdir -p /usr/java
    mv openjdk-12.0.2_linux-x64_bin.tar.gz /usr/java
    cd /usr/java
    tar -xzvf openjdk-12.0.2_linux-x64_bin.tar.gz
    rm openjdk-12.0.2_linux-x64_bin.tar.gz
    export JAVA_HOME=/usr/java/jdk-12.0.2
    export PATH=$JAVA_HOME/bin:$PATH
fi

echo "kill old process"
if ls /var/app/*.jar 1> /dev/null 2>&1; then
  JAR_PATH = $(ls /var/app/*.jar | cut -d " " -f1)
  JAR_NAME = $(basename $JAR_NAME)
  if [ -n JAR_NAME ]; then
      CURRENT_PID = $(pgrep -f JAR_NAME)
      if [ -n $CURRENT_PID ]; then
          kill -15 $CURRENT_PID
          sleep 5
      fi
  fi
fi
