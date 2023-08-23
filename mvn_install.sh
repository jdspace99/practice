#!bin/sh

#Install Java as a pre-requisite
sudo yum install java-11-openjdk-devel -y

#change directory into /opt
cd /opt

#Download maven from web
sudo wget --no-check-certificate https://dlcdn.apache.org/maven/maven-3/3.9.4/binaries/apache-maven-3.9.4-bin.zip

#Extract the zip file
sudo unzip apache-maven-3.9.4-bin.zip

#Delete the zip files
sudo rm -rf apache-maven-3.9.4-bin.zip

#Rename the extracted files
sudo mv apache-maven-3.9.4 maven

#Set environmetal variables
sudo echo export M2_HOME=/opt/maven >> ~/.bash_profile

sudo echo export PATH=$PATH:$M2_HOME/bin >> ~/.bash_profile

#Reload the source files
sudo source ~/.bash_profile

#Get the version of installed maven
mvn -version
