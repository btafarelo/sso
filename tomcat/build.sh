#!/bin/bash

apt update && apt install -y maven

cd /tmp

mvn clean package

cp target/webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

file=keycloak-tomcat-adapter-dist-11.0.2.tar.gz
url=https://downloads.jboss.org/keycloak/11.0.2/adapters/keycloak-oidc/keycloak-tomcat-adapter-dist-11.0.2.tar.gz

cd /usr/local/tomcat/lib

curl $url -O

tar -xzf $file

rm -f $file

exit 0