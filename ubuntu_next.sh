#!/bin/zsh

pushd `dirname $0` > /dev/null
PWD=`pwd -P`
popd > /dev/null

NAME = 'Nicolas Bevacqua'
EMAIL = 'nicolasbevacqua@gmail.com'

# essentials
sudo apt-get install -y build-essential libssl-dev curl

# ruby
sudo apt-get install -y rubygems --force-yes

# pip
sudo apt-get install -y python-pip --force-yes

# gm
sudo apt-get install -yqq graphicsmagick

# gnome-do
sudo apt-get install -y gnome-do --force-yes

# mercurial
sudo apt-get install -y mercurial

# git
sudo apt-get install -y git-core
git config --global user.name "$NAME"
git config --global user.email "$EMAIL"
git config --global credential.helper store
git config --global push.default simple
git config --global branch.autosetuprebase always
git config --global color.ui auto

# git-flow
sudo apt-get install git-flow

# hub utility
sudo gem install hub
mkdir -p ~/bin
hub hub standalone > ~/bin/hub && chmod +x ~/bin/hub
git config --global hub.protocol https

# ssh
ln -sfn ~/.ssh/config $PWD/ssh/config

# chrome
sudo apt-get install libxss1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome*.deb

# sublime text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer
ln -sfn ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings $PWD/st3/

# zsh, fancy zsh
ln -sfn ~/.oh-my-zsh/themes/agnork.zsh-theme $PWD/zsh/agnork.zsh-theme
ln -sfn ~/.zshrc $PWD/zsh/config

# powerline
pip install --user git+git://github.com/Lokaltog/powerline
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/
mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# google web fonts
curl -L https://github.com/w0ng/googlefontdirectory/tarball/master > ~/.fonts/gwf.tar.gz
mkdir ~/.fonts/gwf
tar -zxvf ~/.fonts/gwf.tar.gz --directory ~/.fonts/gwf
fc-cache -vf ~/.fonts

# nvm
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# refresh configuration
source ~/.zshrc

# node
nvm install 0.10.21
nvm alias default 0.10.21

# npm
npm install -g bower grunt-cli nodemon

# refresh configuration
source ~/.zshrc

## npm
# npm adduser

## change timezone
# dpkg-reconfigure tzdata

## change keyboard layout
# dpkg-reconfigure keyboard-configuration

# install development languages, clis, db engines, and so on
sh ./ubuntu_dev.sh

# install utility packages
sh ./ubuntu_utils.sh
