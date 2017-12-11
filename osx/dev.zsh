#!/bin/zsh

# mongodb
brew install mongodb

# mongodb-as-a-service on startup and right now
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist

# heroku toolbelt
wget -qO- https://toolbelt.heroku.com/install.sh | sh

# sourcetree
brew cask install sourcetree

# java
brew cask install java

# MAMP
brew cask install mamp

# DiffMerge
brew cask install diffmerge

# phantomjs
brew install phantomjs

# gradle
brew install gradle

# pkg-config and friends
xcode-select --install
brew install pkg-config cairo libpng jpeg giflib

# ngrok
brew cask install ngrok

# jq
brew install jq

# ack
brew install ack

# packer
brew install packer

# docker
brew install docker

# virtual-box
brew cask install virtualbox

# vagrant
brew cask install vagrant
