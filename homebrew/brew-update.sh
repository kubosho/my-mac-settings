#!/bin/sh

brew update
brew outdated | xargs brew install
