#!/usr/bin/env bash

cd /var/www/shibe.local/infrastructure

if [ ! -x "/usr/bin/ansible" ]; then
    echo "Will install Ansible..."
    apt-add-repository -y ppa:ansible/ansible
    apt-get update
    apt-get install -y ansible python-psycopg2
fi

ansible-playbook -i inventory site.yml --limit `hostname -f` --connection=local
