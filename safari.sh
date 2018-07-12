# Enable the `Develop` menu and the `Web Inspector`
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true

# Enable `Debug` menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Show the full URL in the address bar
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Add a context menu item for showing the `Web Inspector` in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Show Safari's Status Bar
defaults write com.apple.Safari ShowStatusBar -bool true
