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
brew cask install sourcetree

# java
brew cask install java

# MAMP
brew cask install mamp

# DiffMerge
brew cask install diffmerge

# watchman, because facebook tools like Jest
brew install watchman

# phantomjs
brew cask install phantomjs

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

# virtual-box
brew cask install virtualbox

# docker
brew install docker
brew install docker-machine
brew install docker-compose

# setup docker
docker-machine create --driver virtualbox default
docker-machine ls
docker-machine start default
docker-machine ls
docker-machine env default

# terraform
brew install terraform

# vagrant
brew cask install vagrant
