#!/bin/zsh

# all the browsers
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install firefox
brew cask install opera

# hipchat
brew cask install slack

# skype
brew cask install skype

# openoffice
brew cask install openoffice

# irc client
# Textual, you can get it at the App Store

# gimp
brew cask install gimp

# inkscape
brew cask install inkscape

# vlc
brew cask install vlc

# transmission
brew cask install transmission

# emojis
brew cask install mojibar

# quick look plugins
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install webp-quicklook
brew cask install suspicious-package

# allow text selection in the quick look window
defaults write com.apple.finder QLEnableTextSelection -bool true

# show dotfiles in finder
defaults write com.apple.finder AppleShowAllFiles YES

# refresh any finder windows
killall Finder
