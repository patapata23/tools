#!/bin/bash

cd $(dirname $0)

./notify.sh 'deploying ....'

IP=$1

ssh fkarasaw@$IP "cd /home/isucon/deploy && git pull && sudo systemctl restart mysql && sudo systemctl restart nginx && sudo sysctl -p"

./notify.sh 'deploy done :shipit:'

