#!/bin/bash


sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform


# creating databases
cd /home/ec2-user
git clone https://github.com/PradeepReddy927/roboshop-dev-infra.git
chown ec2-user:ec2-user -R roboshop-dev-infra
cd roboshop-dev-infra/40-databases
terraform init
terraform apply -auto-approve