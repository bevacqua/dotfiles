#!/bin/zsh

# configure the shell script
zsh $PWD/installation/bootstrap.zsh

# base git configuration
cp $PWD/git/.gitconfig.global ~/.gitconfig
ln -sfn $PWD/git/.gitignore.global ~/.gitignore

# git configuration
git config --global user.name "$NAME"
git config --global user.email "$EMAIL"
git config --global user.signingkey "$PGP_KEY"

# hub utility
sudo gem install hub
mkdir -p ~/bin
hub hub standalone > ~/bin/hub && chmod +x ~/bin/hub
git config --global hub.protocol https
