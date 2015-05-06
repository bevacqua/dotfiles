#!/bin/zsh

# nvm
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# refresh configuration
source ~/.zshrc

# node
nvm install 0.10.23
nvm alias default 0.10.23

# refresh configuration
source ~/.zshrc

# add author info to npm
echo "Adding npm publisher information"
npm set init.author.name "$NAME"
npm set init.author.email "$EMAIL"
npm set init.author.url "$SITE"
npm set save-exact true
npm adduser
