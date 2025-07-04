# My Mac settings

A collection of automation scripts for quickly setting up a macOS development environment. Apply various settings all at once when you get a new Mac.

## 🎯 Overview

This repository contains scripts that automate the following settings:

- System settings - key repeat speed, Dock display, security settings, etc.
- Application settings - optimized settings for Finder, Safari, VSCode, etc.
- Development environment - Homebrew and shell environment setup
- Package management - batch installation of necessary tools and applications

## 📋 Configuration contents

| Script      | Configuration details                                                     |
| :---------- | :------------------------------------------------------------------------ |
| `system.sh` | Disable .DS_Store, auto-hide Dock, menu bar clock, key repeat speed, etc. |
| `dock.sh`   | Remove all application icons from Dock                                    |
| `finder.sh` | Show hidden files, show Library, show extensions, enable path bar, etc.   |
| `safari.sh` | Developer menu, Web Inspector, full URL display, developer settings       |
| `shell.sh`  | Change default shell to zsh                                               |
| `vscode.sh` | Enable key repeat (disable macOS press & hold feature)                    |
| `homebrew/` | Homebrew installation and package management                              |

## 🔧 Prerequisites

- OS - macOS (recommended: macOS 11 Big Sur or later)
- Dependencies - Git
- Permissions - Some settings require administrator privileges

## 📦 Installation

### Apply all settings at once

```bash
# Clone the repository
git clone https://github.com/kubosho/my-mac-settings.git

# Run the setup script
cd my-mac-settings
./setup.sh

# After completion, remove the repository if no longer needed
cd ../
rm -rf my-mac-settings/
```

### Apply settings individually

To apply only specific settings, run scripts individually:

```bash
# Example: Apply only Finder settings
./finder.sh

# Example: Install only Homebrew
./homebrew/brew-install.sh
```

## ⚠️ Cautions

- Impact of settings - These scripts modify system settings. It's recommended to review the contents before execution
- Backup - It's recommended to backup important settings beforehand
- Restart - Some settings take effect after restart

## 🔧 Troubleshooting

### If permission errors occur

```bash
# Grant execution permissions to all scripts
chmod +x *.sh homebrew/*.sh
```

### If specific settings are not applied

1. Restart the relevant application
2. Restart macOS
3. Verify settings are applied using `defaults read` command
