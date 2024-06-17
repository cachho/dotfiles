#!/bin/bash

# Install Fish Shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish

# Install Fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

