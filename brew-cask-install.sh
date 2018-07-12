#!/bin/sh

brew tap caskroom/versions

brew cask install google-chrome-canary
brew cask install firefox-nightly
brew cask install safari-technology-preview

brew cask install 1password
brew cask install adobe-creative-cloud
brew cask install appcleaner
brew cask install atom
brew cask install docker
brew cask install dropbox
brew cask install google-cloud-sdk
brew cask install iterm2
brew cask install karabiner-elements
brew cask install slack
brew cask install visual-studio-code

open /usr/local/Caskroom/adobe-creative-cloud/latest/Creative\ Cloud\ Installer.app/
