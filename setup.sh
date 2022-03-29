#!/bin/sh

readonly CURRENT_DIR=$(cd $(dirname $0);pwd)

if [ $CURRENT_DIR != $PWD ]; then
  cd $CURRENT_DIR
fi

./system.sh
./dock.sh
./finder.sh
./safari.sh
./brew-install.sh
./shell.sh
./brew-cask-install.sh
./vim.sh
./vscode.sh
