## Architecture Diagram

![Architecture Diagram](Hosting on ec2.png)


**README.md**
Deployed Static Website on Amazon EC2
This repository contains the necessary files and instructions for deploying a static website on an Amazon EC2 instance using the Amazon Linux 2 AMI.


**Prerequisites**
An AWS account with access to the EC2 service.
Basic knowledge of AWS EC2 and security groups.
Instructions
Launching EC2 Instance
Launch a new EC2 instance using the Amazon Linux 2 AMI or a suitable AMI.
Use the default VPC/SUBNET.
Enable the public IP for the instance.
Configure the security group to allow inbound traffic on port 80 (HTTP).
User Data Script
During the EC2 instance launch, use the following User Data script:



**BASH**
#!/bin/bash
sudo su
sudo yum update -y
sudo yum install -y httpd
cd /var/www/html
wget https://github.com/Busayor123/Host-static-webSite-on-Ec2/archive/refs/heads/main.zip 
unzip main.zip 
cp -r  mole-main/* /var/www/html/  
rm -rf main.zip
systemctl enable httpd
systemctl start httpd


**Author**
[OLUWABUSAYO ABATI]





