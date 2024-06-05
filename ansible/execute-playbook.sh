#!/bin/bash

ansible-playbook -i inventories/local/hosts.ini playbook.yml -K "$@"
