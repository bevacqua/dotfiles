#!/bin/zsh

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# refresh configuration
source ~/.zshrc

# node
export NODE_LATEST=$(nvm ls-remote | tail -1 | xargs)
nvm install $NODE_LATEST
nvm alias default $NODE_LATEST

# refresh configuration
source ~/.zshrc

# install yarn
brew install yarn

# add author info to npm
echo "Adding npm publisher information"
npm config set init-author-name "$NAME"
npm config set init-author-email "$EMAIL"
npm config set init-author-url "$WEBSITE"
npm config set init-license "MIT"
npm config set save-exact true
npm adduser
