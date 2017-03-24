#!/bin/sh

readonly CURRENT_DIR=$(cd $(dirname $0);pwd)

if [ $CURRENT_DIR != $PWD ]; then
  cd $CURRENT_DIR
fi

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap phinze/homebrew-cask
brew tap rcmdnk/rcmdnkpac
brew tap homebrew/versions
brew tap peco/peco

brew update
brew outdated | xargs brew install

brew install brew-cask
brew install bzr
brew install curl
brew install git
brew install hg
brew install hub
brew install tig
brew install peco
brew install wget
brew install z
brew install zsh
brew install the_silver_searcher
brew install rcmdnk-trash

brew cask install dropbox
brew cask install google-chrome
brew cask install iterm2

