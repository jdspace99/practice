#!bin/sh

#Install Java as a pre-requisite
sudo yum install java-11-openjdk-devel -y

#change directory into /opt
cd /opt

#Download maven from web
sudo wget --no-check-certificate https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.12/bin/apache-tomcat-10.1.12-windows-x64.zip

#Extract the zip file
sudo unzip apache-tomcat-10.1.12-windows-x64.zip

#Delete the zip files
sudo rm -rf apache-tomcat-10.1.12

#Rename the extracted files
sudo mv apache-tomcat-10.1.12 tomcat

#Set permission for tomcatr directory
sudo chmod 777 -R /opt/tomcat

#Create a service link to start and stop tomcat
sudo ln -s /opt/tomcat/bin/startup.sh     /usr/bin/tomcat
sudo ln -s /opt/tomcat/bin/shutdown.sh     /usr/bin/tomcat

#Enable and stat tomcat
sudo systemctl enable tomcat
sudo systemctl start tomcat

#Check if tomcat is running
ps -ef | grep tomcat

