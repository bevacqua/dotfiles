#!/bin/zsh

# Latin American keyboard layout
cp $PWD/osx/support/latinamerican.keylayout ~/Library/Keyboard\ Layouts

# install brew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# cask for brew
brew tap phinze/cask
brew install brew-cask

# cask versions
brew tap caskroom/versions

# wget
brew install wget

# python (pip)
brew install python

# gm
brew install graphicsmagick

# iterm
brew cask install iterm2

# install zsh
brew install zsh

# oh-my-zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# set zsh as default shell
chsh -s `which zsh`

# quicksilver
brew cask install quicksilver

# mercurial
brew install hg

# git
brew install git
git config --global user.name "$NAME"
git config --global user.email "$EMAIL"
git config --global credential.helper store
git config --global push.default simple
git config --global branch.autosetuprebase always
git config --global color.ui auto

# git-flow
brew install git-flow
ln -sfn $PWD/zsh/git-flow-completion.zsh ~/.git-flow-completion.zsh

# hub utility
sudo gem install hub
mkdir -p ~/bin
hub hub standalone > ~/bin/hub && chmod +x ~/bin/hub
git config --global hub.protocol https

# ssh
ln -sfn $PWD/ssh/config ~/.ssh/config

# st3
brew cask install sublime-text3

# st3 preferences
ln -sfn $PWD/st3/preferences ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# st3 keymaps
ln -sfn $PWD/st3/keymap.osx ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ (OSX).sublime-keymap

# st3 package control plugin
curl https://sublime.wbond.net/Package%20Control.sublime-package -o ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\ Control.sublime-package

# zsh, fancy zsh
ln -sfn $PWD/zsh/agnork.zsh-theme ~/.oh-my-zsh/themes/agnork.zsh-theme
ln -sfn $PWD/zsh/config ~/.zshrc

echo "# insert machine-specific configuration here" > ~/.zshrc.user

# powerline
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
mkdir ~/Library/Fonts
mv PowerlineSymbols.otf ~/Library/Fonts
git clone https://github.com/Lokaltog/powerline-fonts.git ~/Library/Fonts/powerline-fonts
fc-cache -vf ~/Library/Fonts

# google web fonts
curl -L https://github.com/w0ng/googlefontdirectory/tarball/master > ~/Library/Fonts/gwf.tar.gz
mkdir ~/Library/Fonts/gwf
tar -zxvf ~/Library/Fonts/gwf.tar.gz --directory ~/Library/Fonts/gwf
rm ~/Library/Fonts/gwf.tar.gz
fc-cache -vf ~/Library/Fonts

# nvm
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# refresh configuration
source ~/.zshrc

# node
nvm install 0.10.23
nvm alias default 0.10.23

# refresh configuration
source ~/.zshrc

# add author info to npm
echo "Adding npm publisher information"
npm set init.author.name "$NAME"
npm set init.author.email "$EMAIL"
npm set init.author.url "$SITE"
npm adduser

# install development languages, clis, db engines, and so on
sh $PWD/installation/dev.sh
sh $PWD/osx/dev.sh

# install programs
sh $PWD/osx/programs.sh
