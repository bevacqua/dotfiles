#!/bin/zsh

# pull gpg private key into keyring
gpg --import ~/.pgp.private.key

# configuration
DEFAULT_NAME="Nicolás Bevacqua"
DEFAULT_EMAIL="nicolasbevacqua@gmail.com"
DEFAULT_WEBSITE="https://ponyfoo.com"
DEFAULT_PGP_KEY=$(\
  gpg \
    --list-secret-keys \
    --keyid-format LONG \
      | grep sec \
      | sed -n "s/[^\/]*\///p" \
      | cut -f 1 -d " " \
)

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

# gpg
mkdir ~/.gnupg
ln -sfn $PWD/gpg/gpg.conf ~/.gnupg/gpg.conf
