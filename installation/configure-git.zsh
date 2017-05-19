#!/bin/zsh

# base git configuration
cp $PWD/.gitconfig.example > ~/.gitconfig

# git configuration
git config --global user.name "$NAME"
git config --global user.email "$EMAIL"

# hub utility
sudo gem install hub
mkdir -p ~/bin
hub hub standalone > ~/bin/hub && chmod +x ~/bin/hub
git config --global hub.protocol https
