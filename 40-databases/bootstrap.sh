#!/bin/bash

component=$1
# "sudo sh /tmp/bootstrap.sh mongodb from here get the value to component=$1 $1 as input parameter" 
environment=$2

sudo dnf install ansible -y

cd /home/ec2-user

git clone https://github.com/challasrikanth/roboshop-ansible-roletf.git

cd roboshop-ansible-roletf
git pull
ansible-playbook -e component=$component -e env=$environment roboshop.yaml
