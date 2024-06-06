#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"`
EC2AZ=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -v http://169.254.169.254/latest/meta-data/placement/availability-zone)
sudo echo '<center><h1>Hello world from instance located in Availability Zone: AZID </h1></center>' > /var/www/html/index.txt
sudo bash -c "sed 's/AZID/$EC2AZ/' /var/www/html/index.txt > /var/www/html/index.html"