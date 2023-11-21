## Architecture

![AWS Architecture Diagram](Ec2.png)




##README.md
Static Website Deployment on Amazon EC2
This repository contains the necessary files and instructions for deploying a static website on an Amazon EC2 instance using the Amazon Linux 2 AMI.

##Hosting on ec2.png

##Prerequisites
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

EC2 Instance:

Launch a new EC2 instance using an Amazon Linux 2 AMI or a suitable AMI.
Use the default VPC/SUBNET.
Enable the public IP for the instance.
Configure the security group to allow inbound traffic on port 80 (HTTP).
User Data Script:

The EC2 instance is configured using the following user data script during launch: User create an architecture diagram Host an HTML website on a single EC2 uploading the web files from s3.
User Data Script:

The EC2 instance is configured using the following user data script during launch:
#!/bin/bash

**sudo su
yum update -y
yum install -y httpd
cd /var/www/html
wget  https://s3.amazonaws.com/myaws.bucket456/mole.zip
unzip mole.zip
cp -r mole-main/* /var/www/html/
rm -rf mole.zip
systemctl enable httpd
systemctl start httpd**

##bash

#!/bin/bash


User Data Script:

The EC2 instance is configured using the following user data script during launch:
#!/bin/bash

sudo su
yum update -y
yum install -y httpd
cd /var/www/html
wget  https://s3.amazonaws.com/myaws.bucket456/mole.zip
unzip mole.zip
cp -r mole-main/* /var/www/html/
rm -rf mole.zip
systemctl enable httpd
systemctl start httpd


##Accessing the Website
Once the EC2 instance is running and the web server is started, access your static website by navigating to the public IP of your EC2 instance in a web browser.


**Author
[Oluwabusayo Abati]**

License
This project is licensed under the MIT License.

Architecture Diagram
Creating an architecture diagram involves using a diagramming tool to represent the components of your system. Here are general steps:

Draw a Diagram: Use tools like draw.io, Lucidchart, or any diagramming tool of your choice to illustrate the architecture. Represent components like EC2 instance, VPC, security group, and GitHub repository.

Export as Image: Once your diagram is complete, export it as an image (PNG, JPEG, or any format you prefer).

Upload Image: Upload the exported image to your GitHub repository or any image hosting service.

Update README: In your README file, include a link to the hosted architecture diagram image using Markdown. For example:

markdown
Copy code
## Architecture Diagram


