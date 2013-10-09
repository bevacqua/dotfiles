#!/bin/zsh

# get temporarily set up
mkdir -p /tmp/bootstrap
cd /tmp/bootstrap

# essentials
sudo apt-get install build-essential libssl-dev curl -y

# git
sudo apt-get install git-core -y
git config --global user.name "Nicolas Bevacqua"
git config --global user.email "nicolasbevacqua@gmail.com"

# chrome install
sudo apt-get install libxss1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome*.deb

# sublime text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo apt-get update
sudo apt-get install sublime-text-installer

# hipchat
echo "deb http://downloads.hipchat.com/linux/apt stable main" > \
  /etc/apt/sources.list.d/atlassian-hipchat.list
wget -O - https://www.hipchat.com/keys/hipchat-linux.key | apt-key add -
sudo apt-get update
sudo apt-get install hipchat -y

# nvm
curl https://raw.github.com/creationix/nvm/master/install.sh | sh
echo "\n. ~/.nvm/nvm.sh" >> ~/.zshrc
source ~/.zshrc

## change timezone
# dpkg-reconfigure tzdata

## change keyboard layout
# dpkg-reconfigure keyboard-configuration

exit 0
