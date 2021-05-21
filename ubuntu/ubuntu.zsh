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

# xvfb
sudo apt-get install xvfb

# git
sudo apt-get install -y git-core

# git-flow
sudo apt-get install git-flow

# git configuration + hub
sh $PWD/installation/configure-git.zsh

# sublime text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

# st3 as default text editor
sudo sed -i 's/gedit.desktop/sublime_text.desktop/g' /usr/share/applications/defaults.list

# st3 preferences
ln -sfn $PWD/st4/preferences ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

# st3 package control plugin
curl https://sublime.wbond.net/Package%20Control.sublime-package -o ~/.config/sublime-text-3/Installed\ Packages/Package\ Control.sublime-package

# run OS-free scripts
zsh $PWD/installation/universal.zsh

# powerline
pip2 install --user git+git://github.com/Lokaltog/powerline
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

# install nodejs
zsh $PWD/installation/node.zsh

# install development languages, clis, db engines, and so on
zsh $PWD/installation/dev.zsh
zsh $PWD/ubuntu/dev.zsh

# install programs
zsh $PWD/ubuntu/programs.zsh

## recommend post-install commands
echo "Use \`dpkg-reconfigure tzdata\` to pick your time zone"
echo "Use \`dpkg-reconfigure keyboard-configuration\` to pick your keyboard layout"
