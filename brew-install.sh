#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update
brew outdated | xargs brew install

brew tap homebrew/cask
brew tap rcmdnk/rcmdnkpac

brew install curl
brew install git
brew install go
brew install hub
brew install kubernetes-cli
brew install tig
brew install peco
brew install wget
brew install rcmdnk-trash
brew install zsh

brew install gnupg2
brew install gpg-agent
brew install pinentry-mac
