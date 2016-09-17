#!/bin/bash -x

cd $(dirname $0)

# setup users
for user in isucon fkarasaw mtaguchi tahatori
do
  sudo useradd $user -d /home/$user
  sudo mkdir -p /home/$user/.ssh
  sudo chmod 700 /home/$user/.ssh
  sudo cp authorized_keys /home/isucon/.ssh/authorized_keys
  sudo chown -R $user:$user /home/$user
done

sudo chmod -R 777 /home/isucon
sudo chmod 700 /home/isucon/.ssh


