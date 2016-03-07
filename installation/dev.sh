#!/bin/zsh

# Requires OS-specific script to install npm, pip

# npm global CLI treats
npm install -g json
npm install -g jshint
npm install -g bower
npm install -g yo
npm install -g grunt-cli
npm install -g nodemon
npm install -g static-server
npm install -g hose
npm install -g browserify
npm install -g watchify
npm install -g testling
npm install -g localtunnel

# automatic node version manager
npm install -g avn avn-nvm
avn setup

# aws-cli
pip install awscli --upgrade

# gist CLI
sudo gem install gist
