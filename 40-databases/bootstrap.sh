#!/bin/bash

component=$1
environment=$2

sudo dnf install ansible -y

cd /home/ec2-user

git clone https://github.com/challasrikanth/roboshop-ansible-roletf.git 

cd ansible-roboshop-rolestf
git pull
ansible-playbook -e component=$component -e env=$environment roboshop.yaml
