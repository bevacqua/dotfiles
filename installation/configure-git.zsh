#!/bin/zsh

# git configuration
git config --global user.name "$NAME"
git config --global user.email "$EMAIL"
git config --global credential.helper store
git config --global push.default simple
git config --global branch.autosetuprebase always
git config --global color.ui auto

# hub utility
sudo gem install hub
mkdir -p ~/bin
hub hub standalone > ~/bin/hub && chmod +x ~/bin/hub
git config --global hub.protocol https
