#/usr/bin/env bash

# install required packages for deployer and Ansible
echo "installing EPEL repository"
yum install -y epel-release
echo "updating, installing packages"
yum update -y
yum install -y git python-pip python-devel gcc
echo "installing ansible"
pip install ansible

# set ntp timezone
echo "setting timezone to America/Los_Angles"
timedatectl set-timezone America/Los_Angeles

# make our git repository and pull OSAD source
echo "Cloning ansible-master repo from git"
mkdir /opt/ansible-master
git clone https://github.com/osu-sig/ansible-master /opt/ansible-master
