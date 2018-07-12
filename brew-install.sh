#!/bin/sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew outdated | xargs brew install

brew tap phinze/homebrew-cask
brew tap rcmdnk/rcmdnkpac
brew tap homebrew/versions

brew install brew-cask
brew install curl
brew install git
brew install go
brew install hub
brew install kubernetes-cli
brew install tig
brew install peco
brew install wget
brew install rcmdnk-trash
brew install gnupg2
brew install gpg-agent
brew install pinentry-mac
