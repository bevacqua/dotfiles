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

# MAMP
brew cask install mamp

# DiffMerge
brew cask install diffmerge

# phantomjs
brew install phantomjs

# gradle
brew install gradle

# pkg-config
curl http://pkgconfig.freedesktop.org/releases/pkg-config-0.23.tar.gz -o pkgconfig.tgz
tar -zxf pkgconfig.tgz && cd pkg-config-0.23
./configure && make install
cd .. && rm -rf pkg-config-0.23 && rm pkgconfig.tgz

# ngrok
brew cask install ngrok
