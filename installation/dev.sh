#!/bin/zsh

# npm packages, atom packages
zsh $PWD/installation/packages-npm.zsh
zsh $PWD/installation/packages-atom.zsh

# aws-cli
pip2 install awscli --upgrade

# gist CLI
sudo gem install gist
