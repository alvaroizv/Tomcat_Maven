#!/bin/bash

set -xeu

apt-get update

apt-get -y upgrade

apt-get -y install openjdk-11-jdk tomcat9

groupadd -f tomcat9

useradd -s /bin/false -g tomcat9 -d /etc/tomcat9 tomcat9