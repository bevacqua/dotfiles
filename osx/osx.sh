#!/bin/zsh

# install brew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# install zsh
brew install zsh

# set zsh as default shell
chsh -s /usr/local/bin/zsh $USER

# update PATH, using:
# PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# take out ubuntu.sh stuff that's common into somewhere else, and use $PWD to source that stuff.

# symbolic link for the subl CLI
ln -sfn /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
