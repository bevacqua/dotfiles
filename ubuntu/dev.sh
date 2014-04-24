#!/bin/zsh

# mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install mongodb-10gen

# robomongo
sh $PWD/ubuntu/robomongo.sh

# heroku toolbelt
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# java
sudo apt-get install openjdk-7-jdk -y

# phantom
sudo apt-get install phantomjs

# gradle
sudo add-apt-repository ppa:cwchien/gradle
sudo apt-get update
sudo apt-get install gradle -y

# android sdk
mkdir -p $PWD/temp
mkdir -p $PWD/bin
wget -O $PWD/temp/android-sdk http://dl.google.com/android/android-sdk_r22.6.2-linux.tgz
tar -zxvf $PWD/temp/android-sdk -C $PWD/bin

# android studio
ANDROID_STUDIO_TGZ="android-studio-bundle-133.1028713-linux.tgz"
mkdir -p $PWD/temp
wget -O $PWD/temp/android-studio http://dl.google.com/android/studio/install/0.4.6/$ANDROID_STUDIO_TGZ
sudo tar -zxvf $PWD/temp/android-studio -C /opt
ln -sfn $PWD/ubuntu/support/android-studio.desktop ~/.local/share/applications/android-studio.desktop
