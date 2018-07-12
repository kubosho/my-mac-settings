#!/bin/sh

# Adding ‘Quit’ option to Finder
defaults write com.apple.finder QuitMenuItem -bool true; killall Finder

# Set `${HOME}` as the default location for new Finder windows
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Show Tab bar in Finder
defaults write com.apple.finder ShowTabView -bool true

# Show the ~/Library directory
chflags nohidden ~/Library

# Show the hidden files
defaults write com.apple.finder AppleShowAllFiles YES
