#!/bin/bash

aws ec2 describe-instances \
    --filters "Name=tag:Name,Values=Ansible-Activity-Server" \ 
    --query "Reservations[0].Instances[0].PublicIpAddress" \
    --output text
