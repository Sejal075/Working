#!/bin/bash
yum update -y
yum install docker -y
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user

docker run -d \
  -p 1337:1337 \
  --name strapi \
  strapi/strapi
