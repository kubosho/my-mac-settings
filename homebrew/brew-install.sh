#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Set up Homebrew PATH for Apple Silicon Mac
eval "$(/opt/homebrew/bin/brew shellenv)"

brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew tap rcmdnk/rcmdnkpac
brew tap aws/tap
