#!/bin/bash
 sudo su
 yum update -y
 yum install -y httpd
 cd /var/www/html
 wget https://github.com/Busayor123/Host-static-webSite-on-Ec2/raw/main/mole.zip
 unzip mole.zip
 cp -r  mole-main/* /var/www/html/ 
 rm -rf mole.zip 
 systemctl enable httpd
 systemctl start httpd
