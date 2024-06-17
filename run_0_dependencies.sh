#!/bin/bash

sudo apt update

# Keychain as a ssh-agent alternative
sudo apt install -y keychain

# Upgrade all
sudo apt upgrade -y
