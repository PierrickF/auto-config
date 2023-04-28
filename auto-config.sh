#!/bin/bash

ssh-copy-id "$1@$2"

ansible-playbook main.yml -K -i "$2,"
