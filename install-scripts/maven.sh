#!/bin/bash

#--- MAVEN ----
# Download maven from https://maven.apache.org/download.cgi
# Maven installation tutorial https://medium.com/@sarathkumarsivan/install-apache-maven-on-suse-linux-enterprise-server-4e411086f52e
wget https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz 
sudo tar -xvzf apache-maven-3.6.3-bin.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.6.3 /usr/share/maven
export M2_HOME=/usr/share/maven 
export PATH=${M2_HOME}/bin:${PATH}
source ~/.bashrc
#Check maven version mvn -v


