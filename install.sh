#!/bin/sh

set -e

FVERSION=$(rpm -E %fedora)

# Move repository configuration files from 'repositories' to '/etc/yum.repos.d/  
sudo cp repositories/*.repo /etc/yum.repos.d/

# Update the system
sudo dnf update -y

# Extract packages from 'packages.txt' file and install
packages=$(grep -vE '^\s*#' packages.txt | awk '{print $1}')

# Show a list of packages to install and prompt confirmation

echo $packages
sudo dnf install -y $packages

# Scripts
# Make scripts executable

# Install Node.js 
scripts/install-node.sh

# VS Code profile setup
scripts/setup-vscode-profiles.sh

# Run Post Setup Script - disable third party repositories


