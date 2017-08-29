#!/bin/zsh

# configuration
DEFAULT_NAME="Nicolás Bevacqua"
DEFAULT_EMAIL="nicolasbevacqua@gmail.com"
DEFAULT_WEBSITE="https://ponyfoo.com"
DEFAULT_PGP_KEY=""

read -p "Name ($DEFAULT_NAME): " NAME
NAME=${NAME:-$DEFAULT_NAME}
echo $NAME

read -p "Email ($DEFAULT_EMAIL): " EMAIL
EMAIL=${EMAIL:-$DEFAULT_EMAIL}
echo $EMAIL

read -p "Site ($DEFAULT_WEBSITE): " SITE
SITE=${SITE:-$DEFAULT_WEBSITE}
echo $SITE

read -p "PGP Key: " PGP_KEY
PGP_KEY=${PGP_KEY:-$DEFAULT_PGP_KEY}
echo $PGP_KEY

# ssh
mkdir ~/.ssh
ln -sfn $PWD/ssh/config ~/.ssh/config
