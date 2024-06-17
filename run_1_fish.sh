#!/bin/bash

# Install Fish Shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish

# Set fish as the default shell
chsh -s $(which fish)

# Install ssh agent
wget https://gitlab.com/kyb/fish_ssh_agent/raw/master/functions/fish_ssh_agent.fish -P ~/.config/fish/functions/
echo "AddKeysToAgent yes" >> ~/.ssh/config

# Switch to fish shell
fish

# Install Fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

