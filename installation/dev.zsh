#!/bin/zsh

# npm packages, atom packages
zsh $PWD/installation/packages-npm.zsh
zsh $PWD/installation/packages-atom.zsh

# aws-cli
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "/tmp/awscliv2.pkg"
sudo installer -pkg /tmp/awscliv2.pkg -target /

# gist CLI
sudo gem install gist
