#!/bin/bash

export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_04
echo $JAVA_HOME

export JAVA_VENDOR=Sun
export PATH=$JAVA_HOME/bin:$PATH
cd ~/Skattekontoen/DMS_POB_131377840/
mvn clean install 



