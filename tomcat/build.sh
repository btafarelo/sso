#!/bin/bash -x

#apt update && apt install -y maven

cd /tmp

curl -OJL https://github.com/keycloak/keycloak/releases/download/18.0.0/keycloak-oidc-tomcat-adapter-18.0.0.zip

unzip keycloak-oidc-tomcat-adapter-18.0.0.zip -d /usr/local/tomcat/lib

rm keycloak-oidc-tomcat-adapter-18.0.0.zip

curl https://dlcdn.apache.org/maven/maven-3/3.9.11/binaries/apache-maven-3.9.11-bin.tar.gz | tar -xz

cd /tmp/webapp

/tmp/apache-maven-3.9.11/bin/mvn -T 1C clean package

cp -R target/webapp-1.0-SNAPSHOT/ /usr/local/tomcat/webapps/ROOT

exit 0