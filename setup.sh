#!/bin/sh

readonly ROOT_DIR=`git rev-parse --show-toplevel`

readonly DOT_FILES_DIR=$ROOT_DIR/dotfiles
readonly EDITOR_SETTINGS_DIR=$ROOT_DIR/editor

$DOT_FILES_DIR/setup.sh
$EDITOR_SETTINGS_DIR/setup.sh
