#!/bin/zsh

# postgres
brew install postgres
brew services start postgresql
createuser -s postgres # commonplace `postgres` user isn't auto-created
createdb # db for `whoami` isn't auto-created

# redis
brew install redis
brew services start redis

# elasticsearch
brew tap elastic/tap
brew install elastic/tap/elasticsearch-oss
brew services start elastic/tap/elasticsearch-oss

# mongodb
brew tap mongodb/brew
brew install mongodb-community
brew services start mongodb-community

# heroku toolbelt
wget -qO- https://toolbelt.heroku.com/install.sh | sh

# sourcetree
brew install --cask sourcetree

# java
brew install java
sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

# MAMP
brew install --cask mamp

# DiffMerge
brew install --cask diffmerge

# watchman, because facebook tools like Jest
brew install watchman

# phantomjs
brew install --cask phantomjs

# gradle
brew install gradle

# pkg-config and friends
xcode-select --install
brew install pkg-config cairo libpng jpeg giflib

# ngrok
brew install --cask ngrok

# jq
brew install jq

# ack
brew install ack

# packer
brew install packer

# virtual-box
brew install --cask virtualbox

# docker
brew install docker
brew install docker-compose

# install docker for Mac
curl \
  -L https://download.docker.com/mac/stable/Docker.dmg \
  -o ~/Desktop/Docker.dmg

# you'll have to drag and drop 😰
open ~/Desktop/Docker.dmg

# afterwards, finish up setup
open /Applications/Docker.app

# terraform
brew install terraform

# vagrant
brew install --cask vagrant
