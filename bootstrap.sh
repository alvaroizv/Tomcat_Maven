#!/bin/bash

set -xeu

apt-get update

apt-get -y upgrade

apt-get -y install openjdk-11-jdk tomcat9 tomcat9-admin maven

groupadd -f tomcat9

id -u tomcat9 >/dev/null 2>&1 || useradd -s /bin/false -g tomcat9 -d /etc/tomcat9 tomcat9

cp /vagrant/context.xml /usr/share/tomcat9-admin/host-manager/META-INF/context.xml
cp /vagrant/tomcat-users.xml /etc/tomcat9/tomcat-users.xml
cp /vagrant/settings.xml /etc/maven/settings.xml

# Borramos proyecto si existe previamente
rm -rf tomcat-pruebadespliegue


mvn archetype:generate -DgroupId=org.zaidinvergeles \
                         -DartifactId=tomcat-pruebadespliegue \
                         -Ddeployment \
                         -DarchetypeArtifactId=maven-archetype-webapp \
                         -DinteractiveMode=false

cp /vagrant/pom.xml /home/vagrant/tomcat-pruebadespliegue/pom.xml

systemctl restart tomcat9
systemctl status tomcat9

mvn --v
cd /home/vagrant/tomcat-pruebadespliegue

mvn tomcat7:deploy