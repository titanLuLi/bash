#!/bin/bash

export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_04
echo $JAVA_HOME

export JAVA_VENDOR=Sun
export PATH=$JAVA_HOME/bin:$PATH
cd /home/spok/SPORK_trunk/GItHub_AOGD/aogd-portal 
mvn clean install 


