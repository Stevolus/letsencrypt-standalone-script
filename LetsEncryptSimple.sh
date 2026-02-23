#!/bin/bash

echo "Make sure the package 'certbot' is installed"
echo ""
echo "Cloudlinux/Centos yum -y install certbot"
echo "Ubuntu/Debian apt -y install certbot"
echo ""
read "Enter the domain name you would like to get a certificate for: " domain

echo "Creating ssl certificate for $domain domain..."
sleep 3
sudo certbot certonly --standalone -d $domain


echo "Please copy the below two lines to your apache or nginx server config file"
echo "NB: Make sure that any existing entries are commented out or removed."

echo "ssl_certificate /etc/letsencrypt/live/$domain/cert.pem"
echo "ssl_certificate_key /etc/letsencrypt/live/$domain/privkey.pem"
