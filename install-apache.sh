#!/bin/bash

yum update -y
yum install httpd -y
systemctl enable httpd
systemctl start httpd
echo "<h2>Hello World from $(hostname -f)</h2>" > /var/www/html/index.html