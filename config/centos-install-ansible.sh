#!/bin/bash

# check ansible first
type ansible && echo "ansible is installed, skipping" && exit 0

# update system
yum update -y

# install ansible
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum localinstall -y epel-release-latest-7.noarch.rpm
yum install -y ansible

# configure ansible hosts
cp /etc/ansible/hosts /etc/ansible/hosts.vagrantbkp
cat <<EOT > /etc/ansible/hosts
localhost  ansible_connection=local
EOT