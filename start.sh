#!/bin/bash
cd "$(dirname "$0")"
USERNAME_FILE="./username.txt"
if [ -f $USERNAME_FILE ]; then
    echo "$USERNAME_FILE exists."
else
    echo "$(whoami)" > $USERNAME_FILE
fi

export DBT_USER=$(<$USERNAME_FILE)

echo "Start docker containers"
docker-compose up -d