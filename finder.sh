#!/bin/sh

# Adding 'Quit' option to Finder
defaults write com.apple.finder QuitMenuItem -bool true

# Clear default Finder tags
defaults delete com.apple.finder FavoriteTagNames 2>/dev/null || true
defaults write com.apple.finder ShowRecentTags -bool false

# Hide items on desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false

# Remove items from trash after 30 days
defaults write com.apple.finder FXRemoveOldTrashItems -bool true

# Set `${HOME}` as the default location for new Finder windows
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# Set default view style to column view
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"
defaults write com.apple.finder FXPreferredGroupBy -string "Name"

# Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Show Tab bar in Finder
defaults write com.apple.finder ShowTabView -bool true

# Show the ~/Library directory
chflags nohidden ~/Library

# Show the all extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show the hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# Remove .DS_Store files to reset folder view preferences
find ~ -name ".DS_Store" -delete 2>/dev/null || true

# Restart Finder to apply all settings
killall Finder