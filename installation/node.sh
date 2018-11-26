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

# install yarn
brew install yarn --without-node

# add author info to npm
echo "Adding npm publisher information"
npm config set init-author-name "$NAME"
npm config set init-author-email "$EMAIL"
npm config set init-author-url "$SITE"
npm config set init-license "MIT"
npm config set save-exact true
npm adduser
