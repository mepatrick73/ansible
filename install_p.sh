#!/bin/bash
if [[ ! -f ../.zshrc ]]; then
    if test -f ../.ssh/id_ed25519; then
        eval "$(ssh-agent -s)"
        ssh-add ~/.ssh/id_ed25519
    fi
fi
# Execute Ansible playbook
ansible-playbook local.yml --ask-become-pass --ask-vault-pass
