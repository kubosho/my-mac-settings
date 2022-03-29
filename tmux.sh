#!/bin/sh

TPM_DIR=~/.tmux/plugins/tpm

if [ ! -d $TPM_DIR ]; then
        git clone https://github.com/tmux-plugins/tpm $TPM_DIR
fi
