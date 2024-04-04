#!/bin/bash

# Execute Ansible playbook
ansible-playbook local.yml --ask-become-pass --ask-vault-pass
