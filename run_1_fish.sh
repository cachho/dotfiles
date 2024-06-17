#!/bin/bash

# Install Fish Shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish

# Set fish as the default shell
echo "Setting fish as the default shell..."
chsh -s $(which fish)
