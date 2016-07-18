#!/bin/zsh

# nvm
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# refresh configuration
source ~/.zshrc

# node
export NODE_LATEST=$(nvm ls-remote | tail -1 | xargs)
nvm install $NODE_LATEST
nvm alias default $NODE_LATEST

# refresh configuration
source ~/.zshrc

# add author info to npm
echo "Adding npm publisher information"
npm set init.author.name "$NAME"
npm set init.author.email "$EMAIL"
npm set init.author.url "$SITE"
npm set save-exact true
npm adduser
