#!/bin/sh

# Uninstall mise from Homebrew if installed
if command -v brew >/dev/null 2>&1 && brew list mise >/dev/null 2>&1; then
  echo "Uninstalling mise from Homebrew..."
  brew uninstall mise
fi

# Install mise using the official curl method
echo "Installing mise via curl..."
curl https://mise.run | sh

# Add mise to PATH for current session
export PATH="$HOME/.local/bin:$PATH"

echo "mise installation completed."