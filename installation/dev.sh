#!/bin/zsh

# npm packages, atom packages
zsh $PWD/installation/packages-npm.zsh
zsh $PWD/installation/packages-atom.zsh

# automatic node version manager
npm install -g avn avn-nvm
avn setup

# aws-cli
pip2 install awscli --upgrade

# gist CLI
sudo gem install gist
