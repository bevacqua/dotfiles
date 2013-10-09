#!/bin/zsh

# essentials
sudo apt-get install build-essential libssl-dev curl -y

# ruby
sudo apt-get install rubygems -y --force-yes

# git
sudo apt-get install git-core -y
git config --global user.name "Nicolas Bevacqua"
git config --global user.email "nicolasbevacqua@gmail.com"
git config --global credential.helper store
git config --global push.default simple
git config --global branch.autosetuprebase always

# hub utility
sudo gem install hub
mkdir -p ~/bin
hub hub standalone > ~/bin/hub && chmod +x ~/bin/hub

# chrome
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
nvm install 0.10.20

## npm
# npm adduser

## change timezone
# dpkg-reconfigure tzdata

## change keyboard layout
# dpkg-reconfigure keyboard-configuration

exit 0
