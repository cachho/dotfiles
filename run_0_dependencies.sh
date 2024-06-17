#!/bin/bash

echo "Updating and upgrading packages..."
sudo apt update
sudo apt upgrade -y

# Keychain as a ssh-agent alternative
echo "Installing keychain..."
sudo apt install -y keychain
