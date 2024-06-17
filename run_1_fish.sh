#!/bin/bash

# Install Fish Shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish

# Set fish as the default shell
chsh -s $(which fish)
