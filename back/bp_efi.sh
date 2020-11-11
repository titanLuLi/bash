#!/bin/bash

export WORKSPACE=/home/efidev/workspace_portal_ipo_trunk
export WORKSPACE_PORTAL=$WORKSPACE/portal


export JAVA_HOME=/usr/lib/jvm/java-7
echo $JAVA_HOME

export JAVA_VENDOR=Sun
export PATH=$JAVA_HOME/bin:$PATH
export MW_HOME=/home/efidev/dev/Oracle/Middleware/Portal

export MAVEN_OPTS="$MAVEN_OPTS -XX:-UseSplitVerifier"

echo  if jsp cashed check this folder /home/efidev/workspace_portal_ipo_trunk/portal/skat-efi-front-web/src/main/webapp/jsp/dk

##cd /home/efidev/workspace_portal_ipo_trunk/portal/skat-efi-front-web/src/main/webapp
## sudo rm -rf classes
## cd /skat-efi-sag-web/src/main/webapp/WEB-INF/classes
## sudo rm -rf _pageflow
## cd /home/efidev/dev/portal-wrapper-deployment/skat-efi-app/skat-efi-front-web.war/WEB-INF/classes
## rm -rf dk

## cd /home/efidev/dev/portal-wrapper-deployment/skat-efi-app/skat-efi-sag-web.war/WEB-INF/classes
## rm -rf dk

## rm /home/efidev/dev/Oracle/Portal/user_projects/domains/efi_portal_IPO/servers/AdminServer/cache -r -f
## rm /home/efidev/dev/Oracle/Portal/user_projects/domains/efi_portal_IPO/servers/AdminServer/tmp -r -f


#build common /home/efidev/workspace_portal_ipo_trunk/common/
##mvn clean install -f /home/efidev/workspace_portal_ipo_trunk/common/efi-configuration/pom.xml

#build /home/efidev/workspace_portal_ipo_trunk
##
mvn clean install -Dmaven.test.skip=true            -f /home/efidev/workspace_portal_ipo_trunk/portal/pom.xml -N
##
##
mvn clean install -Dmaven.test.skip=true            -f /home/efidev/workspace_portal_ipo_trunk/portal/skat-efi-dapreplacement-lib/pom.xml
##
## 
mvn clean install -Dmaven.test.skip=true            -f /home/efidev/workspace_portal_ipo_trunk/portal/skat-efi-portal-commons-lib/pom.xml
## 
## 
mvn clean install -Dmaven.test.skip=true war:inplace -f /home/efidev/workspace_portal_ipo_trunk/portal/skat-efi-tags-web-lib/pom.xml
## 
mvn clean install -Dmaven.test.skip=true war:inplace -f /home/efidev/workspace_portal_ipo_trunk/portal/skat-efi-lookandfeel/pom.xml
## 
mvn clean install -Dmaven.test.skip=true war:inplace -f /home/efidev/workspace_portal_ipo_trunk/portal/skat-efi-ap-web/pom.xml
## 
mvn clean install -Dmaven.test.skip=true war:inplace -f /home/efidev/workspace_portal_ipo_trunk/portal/skat-efi-sag-web/pom.xml
##  
mvn clean install -Dmaven.test.skip=true war:inplace -f /home/efidev/workspace_portal_ipo_trunk/portal/skat-efi-sp-web/pom.xml

## 
mvn clean install -Dmaven.test.skip=true war:inplace -f /home/efidev/workspace_portal_ipo_trunk/portal/skat-efi-kunde-web/pom.xml
mvn clean install -Dmaven.test.skip=true war:inplace -f /home/efidev/workspace_portal_ipo_trunk/portal/skat-efi-front-web/pom.xml 



