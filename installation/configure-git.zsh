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
git config --global --add --bool push.autoSetupRemote true
