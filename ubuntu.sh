#!/bin/sh

# zsh
sudo apt-get update
sudo apt-get install zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
chsh -s `which zsh`

# reboot!
sudo shutdown -r 0
