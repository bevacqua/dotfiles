#!/bin/zsh

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
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

# zsh, fancy zsh
cp agnork.zsh-theme ~/.oh-my-zsh/themes/
sed -i '/ZSH_THEME=/c\ZSH_THEME=\"agnork\"' ~/.zshrc
sed -i '/COMPLETION_WAITING_DOTS=/c\COMPLETION_WAITING_DOTS=\"true\"' ~/.zshrc
sed -i '/DISABLE_CORRECTION=/c\DISABLE_CORRECTION=\"true\"' ~/.zshrc
sed -i '/DISABLE_AUTO_UPDATE=/c\DISABLE_AUTO_UPDATE=\"true\"' ~/.zshrc

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
mkdir -p ~/.fonts/
mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# google web fonts
curl -L https://github.com/w0ng/googlefontdirectory/tarball/master > ~/.fonts/gwf.tar.gz
tar -zxvf ~/.fonts/gwf.tar.gz
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

## npm
# npm adduser

## change timezone
# dpkg-reconfigure tzdata

## change keyboard layout
# dpkg-reconfigure keyboard-configuration

# install development languages, and db engines
sh ./ubuntu_dev.sh

# install utility packages
sh ./ubuntu_utils.sh
