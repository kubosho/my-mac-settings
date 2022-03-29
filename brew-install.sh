#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update
brew outdated | xargs brew install

brew tap homebrew/cask
brew tap rcmdnk/rcmdnkpac

brew install curl
brew install ghq
brew install git
brew install go
brew install hub
brew install nvm
brew install kubernetes-cli
brew install tig
brew install tmux
brew install peco
brew install wget
brew install rcmdnk-trash
brew install zsh
