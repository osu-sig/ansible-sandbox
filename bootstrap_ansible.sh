#/usr/bin/env bash

# install required packages for deployer and Ansible
echo "installing EPEL repository"
yum install -y epel-release
echo "updating, installing packages"
yum update -y
yum install -y git python-pip python-devel gcc
echo "installing ansible"
pip install ansible

# make our git repository and pull ansible-master 
echo "cloning ansible-master repo from git"
mkdir /opt/ansible-master

# add (-b [branch]) to test pull requests
git clone https://github.com/osu-sig/ansible-master /opt/ansible-master

# install roles
pushd /opt/ansible-master
echo "installing roles from ansible-galaxy"
/opt/ansible-master/role-it-up.sh
popd

ssh-keyscan -f /vagrant/inventory >> /home/vagrant/.ssh/known_hosts
