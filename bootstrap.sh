#!/bin/bash

set -xeu

apt-get update

apt-get -y upgrade

apt-get -y install openjdk-11-jdk tomcat9 tomcat9-admin

groupadd -f tomcat9

id -u tomcat9 >/dev/null 2>&1 || useradd -s /bin/false -g tomcat9 -d /etc/tomcat9 tomcat9

cp /vagrant/context.xml /usr/share/tomcat9-admin/host-manager/META-INF/context.xml

systemctl restart tomcat9

systemctl status tomcat9