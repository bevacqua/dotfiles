#!/bin/zsh

# set system preferences
zsh $PWD/osx/preferences.zsh

# .editorconfig link
ln -sfn $PWD/.editorconfig ~/.editorconfig

# suppress "Last login …" messages
touch ~/.hushlogin

# Latin American keyboard layout
cp $PWD/osx/support/latinamerican.keylayout ~/Library/Keyboard\ Layouts

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# cask for brew
brew tap homebrew/cask

# wget
brew install wget

# python (pip)
brew install python

# trash
brew install trash

# gm
brew install graphicsmagick

# xquartz
brew install --cask xquartz

# ffmpeg
brew install ffmpeg

# gifsicle
brew install gifsicle

# gpg
brew install --cask gpg-suite

# iterm
brew install --cask iterm2

# snazzy iterm theme
open $PWD/osx/support/snazzy.itermcolors

# install zsh
brew install zsh

# oh-my-zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | ZSH= sh

# set zsh as default shell
chsh -s `which zsh`

# alfred
brew install --cask alfred

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
brew install --cask hyper

# hyper preferences
ln -sfn $PWD/hyper/.hyper.js ~/.hyper.js

# atom editor
brew install --cask atom

# vs code editor
brew install --cask visual-studio-code

# st3, hopefully gets updated to st4 soon 😬
brew install --cask sublime-text

# snazzy st4 theme
ln -sfn $PWD/st4/snazzy.tmTheme ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/snazzy.tmTheme

# st4 preferences
ln -sfn $PWD/st4/preferences ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# st4 keymaps
ln -sfn $PWD/st4/keymap.osx ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap

# st4 SublimeLinter configuration
ln -sfn $PWD/st4/SublimeLinter.sublime-settings.user ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/SublimeLinter.sublime-settings

# st4 package control plugin
curl \
  -L https://packagecontrol.io/Package\ Control.sublime-package \
  -o ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\ Control.sublime-package

# run OS-free scripts
zsh $PWD/installation/universal.zsh

# powerline
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
mkdir ~/Library/Fonts
mv PowerlineSymbols.otf ~/Library/Fonts
git clone --depth 1 https://github.com/Lokaltog/powerline-fonts.git ~/Library/Fonts/powerline-fonts

# google web fonts
curl -L https://codeload.github.com/google/fonts/zip/refs/heads/main > ~/Library/Fonts/gwf.zip
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

# add this stuff by hand to get iterm2 to be fancier:
# use command+click to open git commits in your web browser

## Profiles > Advanced > Smart Selection

## Smart Selection rule

### Note: Git commit hash
### Regular expression: ([a-f0-9]{4,40})
### Precision: Normal

## Context menu item

### Title: Open remote commit
### Action: Run command
### Parameter: open `cd "\d" && git config --get remote.origin.url | sed -e 's/:/\//' -e 's/\.git//' -e 's/git@/https:\/\//' -e 's/https\/\/\//https:\/\//'`"/commit/\0"
