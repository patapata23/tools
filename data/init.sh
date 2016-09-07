#!/bin/bash

cd $(dirname $0)

sudo useradd isucon

sudo mkdir -p /home/isucon/.ssh
sudo chmod 700 /home/isucon/.ssh
sudo cp authorized_keys /home/isucon/.ssh/authorized_keys

sudo chown -R isucon:isucon /home/isucon

