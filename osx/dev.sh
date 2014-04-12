#!/bin/zsh

# install mongodb
brew install mongodb

# mongodb-as-a-service on startup and right now
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist

# install heroku toolbelt
wget -qO- https://toolbelt.heroku.com/install.sh | sh

# install sourcetree
brew cask install sourcetree

# MAMP
brew cask install mamp

# DiffMerge
brew cask install diffmerge
