#!/bin/sh

readonly ROOT_DIR=`git rev-parse --show-toplevel`

$ROOT_DIR/dotfiles/setup.sh
$ROOT_DIR/editor/setup.sh

if [ "$(uname)" == 'Darwin' ]; then
  $ROOT_DIR/osx/setup.sh
fi
