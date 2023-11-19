

# Host-static-webSite-on-Ec2
Host static webSite on Ec2

[Hosting on ec2.png]

README.md
Static Website Deployment on Amazon EC2
This repository provides instructions and scripts for deploying a static website on an Amazon EC2 instance using the Amazon Linux 2 AMI.

Prerequisites
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


#!/bin/bash

sudo su
sudo yum update -y
sudo yum install -y httpd
cd /var/www/html
wget https://github.com/Busayor123/Host-static-webSite-on-Ec2/archive/refs/heads/main.zip
unzip main.zip
cp -r mole-main/* /var/www/html/
rm -rf main.zip
systemctl enable httpd
systemctl start httpd

This script installs the Apache web server, downloads your website files from the specified GitHub repository, and starts the web server.

Accessing the Website
Once the EC2 instance is running and the web server is started, you can access your static website by navigating to the public IP of your EC2 instance in a web browser.

Example: http://<public-ip>/

Cleaning Up
Remember to terminate your EC2 instance when you're done to avoid incurring unnecessary charges.

Author
[Your Name]

License
This project is licensed under the MIT License.

Architecture Diagram


Description: The architecture diagram illustrates the components and flow involved in hosting a static website on Amazon EC2. Key components include the EC2 instance, VPC, security group, and the GitHub repository containing website files.

Please replace "[Your Name]" and "[Insert Image Here: Link to Your Architecture Diagram Image]" with your actual name and a link to the hosted architecture diagram image, respectively.
