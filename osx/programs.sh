#!/bin/zsh

# chrome
brew cask install google-chrome

# hipchat
brew cask install hipchat

# skype
brew cask install skype

# openoffice
brew cask install openoffice

# irc client
# Textual, you can get it at the App Store

# gimp
brew cask install gimp

# inkscape
brew cask install xquartz
brew install inkscape

# vlc
brew cask install vlc

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
defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder
