#!/bin/sh

# Avoid creating `.DS_Store` files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Auto hide dock
defaults write com.apple.dock "autohide" -bool "true" && killall Dock

# Date options: Show the day of the week
defaults write com.apple.menuextra.clock 'DateFormat' -string 'EEE H:mm'

# Require password immediately after the computer went into sleep or screen saver mode
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# KeyRepeat speed
defaults write -g InitialKeyRepeat -int 12
defaults write -g KeyRepeat -int 2

# Set cursor tracking speed to maximum (beyond UI limit)
defaults write -g com.apple.trackpad.scaling -float 10.0

# Disable display resolution scaling (more space setting)
defaults write NSGlobalDomain AppleDisplayScaleFactor -float 0.75

# Disable live conversion for Japanese IME
defaults write com.apple.inputmethod.Kotoeri JIMPrefLiveConversionKey -bool false
