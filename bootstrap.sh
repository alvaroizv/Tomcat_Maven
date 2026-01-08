#!/bin/bash

set -xeu

apt-get update

apt-get -y upgrade

apt-get -y install openjdk-11-jdk tomcat9