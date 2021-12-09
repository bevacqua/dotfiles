#!/bin/zsh

# aws-cli
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "/tmp/awscliv2.pkg"
sudo installer -pkg /tmp/awscliv2.pkg -target /
