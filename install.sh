#!/bin/sh

set -e

FVERSION=$(rpm -E %fedora)

# Move repository configuration files from 'repositories' to '/etc/yum.repos.d/  
sudo cp repositories/*.repo /etc/yum.repos.d/

# Update the system
sudo dnf update -y

# Extract packages from 'packages.txt' file and install
packages=$(grep -vE '^\s*#' packages.txt | awk '{print $1}')

echo $packages
sudo dnf install -y $packages

# Node.js setup
scripts/install-node.sh

# VS Code profile setup
scripts/install-vscode-profiles.sh

