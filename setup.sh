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

./brew-install.sh
./brew-cask-install.sh
