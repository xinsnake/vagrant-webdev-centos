#!/bin/bash

# update system
yum update -y

# install ansible
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum localinstall -y epel-release-latest-7.noarch.rpm
yum install -y ansible

# configure ansible hosts
cat <<EOT >> /etc/ansible/hosts
localhost  ansible_connection=local
EOT