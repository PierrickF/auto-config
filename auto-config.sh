#!/bin/bash

ssh-copy-id "$1@$2"

ansible-playbook ~/dev/projects/auto-config/main.yml -K -i "$2," --extra-vars "user=$1"
