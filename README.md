

## Architecture

![AWS Architecture Diagram](Ec2.png)


**README.md**

# Hosting a Static Website on Amazon EC2

This repository contains the necessary scripts and steps to deploy a static website on an Amazon EC2 instance.

## Prerequisites

- AWS account
- Amazon EC2 instance (Amazon Linux 2 AMI)
- Security group configured to allow inbound traffic on port 80 (HTTP)

## Getting Started

### Launch EC2 Instance

1. Launch a new EC2 instance using the Amazon Linux 2 AMI or a suitable AMI.
2. Use the default VPC and subnet.
3. Enable the public IP for the instance.
4. Configure the security group to allow inbound traffic on port 80 (HTTP).

### User Data Script

During the EC2 instance launch, use the following user data script:

```bash
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


**Author
[Oluwabusayo Abati]**

****












