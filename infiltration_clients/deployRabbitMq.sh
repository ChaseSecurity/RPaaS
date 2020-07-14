#!/bin/bash
user="user"
passwd="passwd"
sudo apt install -y rabbitmq-server
sudo rabbitmqctl add_user $user $passwd
sudo rabbitmqctl set_user_tags $user administrator
set_permissions -p / $user ".*" ".*" ".*"
sudo rabbitmqctl delete_user guest
sudo rabbitmq-plugins enable rabbitmq_management
