#!/bin/zsh

# suppress "Last login …" messages
touch ~/.hushlogin

# Latin American keyboard layout
cp $PWD/osx/support/latinamerican.keylayout ~/Library/Keyboard\ Layouts

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# cask for brew
brew tap homebrew/cask

# cask versions
brew tap hombrew/cask-versions

# wget
brew install wget

# python (pip)
brew install python

# trash
brew install trash

# gm
brew install graphicsmagick

# xquartz
brew cask install xquartz

# ffmpeg
brew install ffmpeg

# gifsicle
brew install gifsicle

# gpg
brew cask install gpg-suite

# iterm
brew cask install iterm2

# snazzy iterm theme
open $PWD/osx/support/snazzy.itermcolors

# install zsh
brew install zsh

# oh-my-zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# set zsh as default shell
chsh -s `which zsh`

# alfred
brew cask install alfred

# mercurial
brew install hg

# git
brew install git

# git-flow
brew install git-flow

# git diff-so-fancy
brew install diff-so-fancy

# git configuration + hub
zsh $PWD/installation/configure-git.zsh

# hyper editor
brew cask install hyper

# hyper preferences
ln -sfn $PWD/hyper/.hyper.js ~/.hyper.js

# atom editor
brew cask install atom

# vs code editor
brew cask install visual-studio-code

# st3
brew cask install sublime-text

# snazzy st3 theme
ln -sfn $PWD/st3/snazzy.tmTheme ~/Library/Application\ Support/Sublime\ Text/Packages/User/snazzy.tmTheme

# st3 preferences
ln -sfn $PWD/st3/preferences ~/Library/Application\ Support/Sublime\ Text/Packages/User/Preferences.sublime-settings

# st3 keymaps
ln -sfn $PWD/st3/keymap.osx ~/Library/Application\ Support/Sublime\ Text/Packages/User/Default\ (OSX).sublime-keymap

# st3 package control plugin
curl https://sublime.wbond.net/Package%20Control.sublime-package -o ~/Library/Application\ Support/Sublime\ Text/Installed\ Packages/Package\ Control.sublime-package

# run OS-free scripts
zsh $PWD/installation/universal.zsh

# powerline
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
mkdir ~/Library/Fonts
mv PowerlineSymbols.otf ~/Library/Fonts
git clone --depth 1 https://github.com/Lokaltog/powerline-fonts.git ~/Library/Fonts/powerline-fonts

# google web fonts
curl -L https://github.com/google/fonts/archive/master.zip > ~/Library/Fonts/gwf.zip
mkdir ~/Library/Fonts/gwf
unzip ~/Library/Fonts/gwf.zip -d ~/Library/Fonts/gwf
rm ~/Library/Fonts/gwf.zip

# clear font cache
sudo atsutil databases -remove

# install nodejs
zsh $PWD/installation/node.zsh

# install development languages, clis, db engines, and so on
zsh $PWD/installation/dev.zsh
zsh $PWD/osx/dev.zsh

# install programs
zsh $PWD/osx/programs.zsh
