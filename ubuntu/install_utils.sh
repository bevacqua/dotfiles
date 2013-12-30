#!/bin/zsh

# chrome
sudo apt-get install libxss1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome*.deb

# hipchat
echo "deb http://downloads.hipchat.com/linux/apt stable main" > /etc/apt/sources.list.d/atlassian-hipchat.list
wget -O - https://www.hipchat.com/keys/hipchat-linux.key | apt-key add -
sudo apt-get update
sudo apt-get install hipchat -y

# skype
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update
sudo apt-get install skype -y --force-yes

# xchat irc
sudo apt-get install xchat-gnome xchat-gnome-indicator -y

# gimp
sudo apt-get install gimp -y

# inkscape
sudo apt-get install inkscape -y

# vlc
sudo apt-get install vlc browser-plugin-vlc -y

# sticky notes
sudo add-apt-repository ppa:umang/indicator-stickynotes -y
sudo apt-get update
sudo apt-get install indicator-stickynotes

# bitcoin
# sudo add-apt-repository ppa:bitcoin/bitcoin -y
# sudo apt-get update
# sudo apt-get install bitcoin-qt -y
