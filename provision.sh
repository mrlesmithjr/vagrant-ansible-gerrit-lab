#!/bin/bash
sudo apt-get update
sudo apt-get install -y git python-pip python-dev
sudo pip install jinja2
sudo pip install ansible

### Below is for Master repo(s) -- uncomment
sudo ansible-galaxy install -r /vagrant/requirements.yml -f
###

### Below is only for other than Master repo(s) -- comment out for Master repo(s)
#sudo mkdir -p /etc/ansible/roles
#sudo git clone https://github.com/mrlesmithjr/ansible-apache2.git /etc/ansible/roles/ansible-apache2
#sudo git clone https://github.com/mrlesmithjr/ansible-mariadb-mysql.git /etc/ansible/roles/ansible-mariadb-mysql
#sudo git clone --branch=dev https://github.com/mrlesmithjr/ansible-gerrit.git /etc/ansible/roles/ansible-gerrit
###

ansible-playbook -i "localhost," -c local /vagrant/playbook.yml
