#!/bin/zsh

# configure the shell script
zsh $PWD/installation/bootstrap.zsh

# base git configuration, dont't link
cp $PWD/git/.defaults.gitconfig ~/.gitconfig

# global .gitignore
ln -sfn $PWD/git/.global.gitignore ~/.gitignore

# git configuration
git config --global user.name "$NAME"
git config --global user.email "$EMAIL"
git config --global user.signingkey "$PGP_KEY"
git config --global init.defaultBranch master

# hub utility
sudo gem install hub
mkdir -p ~/bin
hub hub standalone > ~/bin/hub && chmod +x ~/bin/hub
git config --global hub.protocol https
