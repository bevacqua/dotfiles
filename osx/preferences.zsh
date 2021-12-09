#!/bin/zsh

# Source: https://github.com/mathiasbynens/dotfiles/blob/c886e139233320e29fd882960ba3dd388d57afd7/.macos
# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# allow text selection in the quick look window
defaults write com.apple.finder QLEnableTextSelection -bool true

# show dotfiles in finder
defaults write com.apple.finder AppleShowAllFiles YES

# show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# suppress bounce notifications
defaults write com.apple.dock no-bouncing -bool TRUE

# Source: https://github.com/mathiasbynens/dotfiles/blob/c886e139233320e29fd882960ba3dd388d57afd7/.macos
# Set highlight color to green
defaults write NSGlobalDomain AppleHighlightColor -string "0.764700 0.976500 0.568600"

# Source: https://github.com/mathiasbynens/dotfiles/blob/c886e139233320e29fd882960ba3dd388d57afd7/.macos
# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Source: https://github.com/mathiasbynens/dotfiles/blob/c886e139233320e29fd882960ba3dd388d57afd7/.macos
# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Source: https://github.com/mathiasbynens/dotfiles/blob/c886e139233320e29fd882960ba3dd388d57afd7/.macos
# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Source: https://github.com/mathiasbynens/dotfiles/blob/c886e139233320e29fd882960ba3dd388d57afd7/.macos
# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Source: https://github.com/mathiasbynens/dotfiles/blob/c886e139233320e29fd882960ba3dd388d57afd7/.macos
# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Source: https://github.com/mathiasbynens/dotfiles/blob/c886e139233320e29fd882960ba3dd388d57afd7/.macos
# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Source: https://github.com/mathiasbynens/dotfiles/blob/c886e139233320e29fd882960ba3dd388d57afd7/.macos
# Trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Source: https://github.com/mathiasbynens/dotfiles/blob/c886e139233320e29fd882960ba3dd388d57afd7/.macos
# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Source: https://github.com/mathiasbynens/dotfiles/blob/c886e139233320e29fd882960ba3dd388d57afd7/.macos
# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Source: https://github.com/mathiasbynens/dotfiles/blob/c886e139233320e29fd882960ba3dd388d57afd7/.macos
# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Don’t automatically rearrange Spaces based on most recent use
# Source: https://github.com/mathiasbynens/dotfiles/blob/66ba9b3cc0ca1b29f04b8e39f84e5b034fdb24b6/.macos
defaults write com.apple.dock mru-spaces -bool false

# mission control on top left hot corner
# Source: https://github.com/mathiasbynens/dotfiles/blob/66ba9b3cc0ca1b29f04b8e39f84e5b034fdb24b6/.macos
defaults write com.apple.dock wvous-tl-corner -int 2
defaults write com.apple.dock wvous-tl-modifier -int 0

# desktop on bottom right hot corner
# Source: https://github.com/mathiasbynens/dotfiles/blob/66ba9b3cc0ca1b29f04b8e39f84e5b034fdb24b6/.macos
defaults write com.apple.dock wvous-br-corner -int 4
defaults write com.apple.dock wvous-br-modifier -int 0

# refresh any finder windows
killall Finder
