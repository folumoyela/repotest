#!/bin/bash
#Description: Installation of sonarqube
#Author: foluke Ogunmoyela
#Date:26-feb-2022


echo "Installation of Sonarqube on centos7"
sudo yum update -y
#!/bin/bash
sleep 2
sudo yum install java-11-openjdk-devel -y
sleep 2
sudo yum install java-11-openjdk -y
sleep 2
cd /opt
sleep 2
sudo yum install wget -y
sleep 2
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sleep 2
sudo yum install unzip
sleep 2
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sleep 2
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
sleep 2
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
sleep 2
./sonar.sh start
sleep 2
sudo firewall-cmd --permanent --add-port=9000/tcp
