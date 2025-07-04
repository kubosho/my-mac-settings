#!/bin/sh

readonly CURRENT_DIR=$(cd $(dirname $0);pwd)

if [ $CURRENT_DIR != $PWD ]; then
  cd $CURRENT_DIR
fi

./system.sh
./dock.sh
./finder.sh
./safari.sh
./homebrew/brew-install.sh
./homebrew/brew-update.sh
./homebrew/brew-package-install.sh
./homebrew/brew-cask-install.sh
./fonts/font-install.sh
./shell.sh
./vscode.sh
