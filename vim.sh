#!/bin/sh

VUNDLE_DIR=~/.vim/bundle/Vundle.vim
BACKUP_DIR=~/.vim_backup/
SWAP_DIR=~/.vim_swap

if [ ! -d $BACKUP_DIR ]; then
        mkdir $BACKUP_DIR
fi

if [ ! -d $SWAP_DIR ]; then
        mkdir $SWAP_DIR
fi

if [ ! -d $VUNDLE_DIR ]; then
        git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIR
fi
