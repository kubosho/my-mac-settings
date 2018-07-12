#!/bin/sh

# Avoid creating `.DS_Store` files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Date options: Show the day of the week
defaults write com.apple.menuextra.clock 'DateFormat' -string 'EEE H:mm'

# Require password immediately after the computer went into sleep or screen saver mode
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
