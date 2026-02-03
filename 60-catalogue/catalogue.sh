#!/bin/bash

sudo growpart /dev/nvme0n1 4
sudo lvextend -L +30G /dev/mapper/RootVG-homeVol
sudo xfs_growfs /home




component=$1
environment=$2
dnf install ansible -y

REPO_URL=https://github.com/daws-86s/ansible-roboshop-roles-tf.git
REPO_DIR=/opt/roboshop/ansible
ANSIBLE_DIR=ansible-roboshop-roles-tf

mkdir -p $REPO_DIR
mkdir -p /var/log/roboshop/
touch ansible.log

cd $REPO_DIR

# check if ansible repo is already cloned or not

if [ -d $ANSIBLE_DIR ]; then

    cd $ANSIBLE_DIR
    git pull
else
    git clone $REPO_URL
    cd $ANSIBLE_DIR
fi

ansible-playbook -e component=$component -e env=$environment main.yaml