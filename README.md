

## Architecture

![AWS Architecture Diagram](Ec2.png)



README.md
markdown
Copy code
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
This script installs the Apache web server, downloads your static website files from the specified GitHub repository, and starts the web server.

Accessing the Website
Once the EC2 instance is running, you can access your static website by navigating to the public IP of your EC2 instance in a web browser.

Cleaning Up
Remember to stop or terminate your EC2 instance when it's no longer needed to avoid incurring unnecessary charges.

shell
Copy code

### Architecture Diagram

Here's a simple architecture diagram:

[Internet] <---> [EC2 Instance] <---> [Apache Web Server] <---> [Static Website Files]

css
Copy code

This diagram represents the flow of traffic from the internet to your EC2 instance running Apache, which serves the static website files stored in `/var/www/html/`.

Feel free to customize the README file and diagram based on your specific details and requirements.









**Author
[Oluwabusayo Abati]**

****












