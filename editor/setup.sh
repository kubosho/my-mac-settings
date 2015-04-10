#!/bin/sh

readonly CURRENT_DIR=$(cd $(dirname $0);pwd)

if [ $CURRENT_DIR != $PWD ]; then
  cd $CURRENT_DIR
fi

if [ "$(uname)" == 'Darwin' ]; then
  cd $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/
  rm -rf User
  ln -s $CURRENT_DIR/sublime/User
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then                                                                                           
  cd $HOME/AppData/Roaming/Sublime\ Text\ 3/Packages/
  rm -rf User
  ln -s $CURRENT_DIR/sublime/User
fi
