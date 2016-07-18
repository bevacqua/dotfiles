#!/bin/zsh

# configuration
DEFAULT_NAME="Nicolás Bevacqua"
DEFAULT_EMAIL="nicolasbevacqua@gmail.com"
DEFAULT_WEBSITE="https://ponyfoo.com"

read -p "Name ($DEFAULT_NAME): " NAME
NAME=${NAME:-$DEFAULT_NAME}
echo $NAME

read -p "Mail ($DEFAULT_EMAIL): " EMAIL
EMAIL=${EMAIL:-$DEFAULT_EMAIL}
echo $EMAIL

read -p "Site ($DEFAULT_WEBSITE): " SITE
SITE=${SITE:-$DEFAULT_WEBSITE}
echo $SITE

# ssh
mkdir ~/.ssh
ln -sfn $PWD/ssh/config ~/.ssh/config
