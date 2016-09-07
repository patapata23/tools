#!/bin/bash

cd $(dirname $0)

sudo mkdir -p /home/isucon/.ssh
sudo chmod 700 /home/isucon/.ssh

sudo cp authorized_keys /home/isucon/.ssh/authorized_keys
