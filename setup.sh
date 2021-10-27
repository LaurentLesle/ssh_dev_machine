#!/bin/bash

sudo apt-get update
sudo apt-get install -y software-properties-common 
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible python3-pip -y

# Upgrade pip3.
pip3 install --upgrade pip

# Install Ansible az collection for interacting with Azure.
ansible-galaxy collection install azure.azcollection

# Get required modules for Ansible on Azure list
wget -O ~/requirements-azure.txt https://raw.githubusercontent.com/ansible-collections/azure/dev/requirements-azure.txt

# Install Ansible modules for Azure
pip install -r ~/requirements-azure.txt
rm -rf ~/requirements-azure.txt

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

az login --tenant microsoft.onmicrosoft.com --use-device-code

pwd

ansible-playbook ./setup_windows.yaml $@