#!/bin/bash

ansible-playbook -i inventories/local/hosts.ini playbook.yml --vault-password-file .vault.pwd -K "$@"
