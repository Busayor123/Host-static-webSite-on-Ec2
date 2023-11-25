#!/bin/bash
 sudo su
 yum update -y
 yum install -y httpd
 cd /var/www/html
 wget https://github.com/Busayor123/Host-static-webSite-on-Ec2/archive/refs/heads/main.zip
 unzip main.zip
 cd Host-static-webSite-on-Ec2-main/
 unzip mole.zip
 cp -r  mole-main/* /var/www/html/ 
 rm -rf main.zip Host-static-webSite-on-Ec2-main
 systemctl enable httpd
 systemctl start httpd
