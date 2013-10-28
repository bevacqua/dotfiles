#!/bin/zsh

# hipchat
echo "deb http://downloads.hipchat.com/linux/apt stable main" > \
  /etc/apt/sources.list.d/atlassian-hipchat.list
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

# vlc
sudo apt-get install vlc browser-plugin-vlc -y
