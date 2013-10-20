#!/bin/zsh

# essentials
sudo apt-get install build-essential libssl-dev curl -y

# ruby
sudo apt-get install rubygems -y --force-yes

# pip
sudo apt-get install python-pip -y --force-yes

# gm
sudo apt-get install -qqy graphicsmagick

# gnome-do
sudo apt-get install gnome-do -y --force-yes

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
git config --global hub.protocol https

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

# xchat irc
sudo apt-get install xchat-gnome xchat-gnome-indicator -y

# zsh, fancy zsh
cp agnork.zsh-theme ~/.oh-my-zsh/themes/
sed -i '/ZSH_THEME=/c\ZSH_THEME=\"agnork\"' ~/.zshrc
sed -i '/COMPLETION_WAITING_DOTS=/c\COMPLETION_WAITING_DOTS=\"true\"' ~/.zshrc
sed -i '/DISABLE_CORRECTION=/c\DISABLE_CORRECTION=\"true\"' ~/.zshrc

# .usrrc
echo "export EDITOR=subl" >> ~/.usrrc
echo "\nalias open=\"xdg-open\"" >> ~/.usrrc
echo "\nalias usrconfig=\"\$EDITOR ~/.usrrc\"" >> ~/.usrrc
echo "\nalias zshconfig=\"\$EDITOR ~/.zshrc\"" >> ~/.usrrc
echo "\n. ~/.nvm/nvm.sh" >> ~/.usrrc

echo "\nsource ~/.usrrc" >> ~/.zshrc

# powerline
pip install --user git+git://github.com/Lokaltog/powerline
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# nvm
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# refresh configuration
source ~/.zshrc

# node
nvm install 0.10.20

# npm
npm install -g bower grunt-cli nodemon

## npm
# npm adduser

## change timezone
# dpkg-reconfigure tzdata

## change keyboard layout
# dpkg-reconfigure keyboard-configuration

# install utility packages
sh ./ubuntu_utils.sh

exit 0
