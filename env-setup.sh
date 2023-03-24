#!/bin/bash

# Set up Ansible
hacking_dir=$(readlink -fn $(dirname "$BASH_SOURCE"))
VIRTUAL_ENV_DISABLE_PROMPT=1
export PIPENV_IGNORE_VIRTUALENVS=1
. $hacking_dir/.venv/bin/activate

export ANSIBLE_CONFIG=$hacking_dir/ansible.cfg
export ANSIBLE_INVENTORY=$hacking_dir/inventory.yml
