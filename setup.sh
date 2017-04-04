#!/bin/sh

readonly CURRENT_DIR=$(cd $(dirname $0);pwd)

if [ $CURRENT_DIR != $PWD ]; then
  cd $CURRENT_DIR
fi

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap phinze/homebrew-cask
brew tap rcmdnk/rcmdnkpac
brew tap homebrew/versions

brew update
brew outdated | xargs brew install

brew install brew-cask
brew install bzr
brew install curl
brew install git
brew install go
brew install hg
brew install hub
brew install tig
brew install peco
brew install redpen
brew install wget
brew install z
brew install zsh
brew install the_silver_searcher
brew install rcmdnk-trash
brew install gnupg2
brew install gpg-agent
brew install pinentry-mac

brew cask install 1password
brew cask install adobe-creative-cloud
brew cask install alfred
brew cask install appcleaner
brew cask install atom
brew cask install docker
brew cask install dropbox
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install google-play-music-desktop-player
brew cask install iterm2
brew cask install java
brew cask install slack
brew cask install visual-studio-code

open /usr/local/Caskroom/adobe-creative-cloud/latest/Creative\ Cloud\ Installer.app/
