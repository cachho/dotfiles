#!/bin/bash

# Install nvm
fisher install jorgebucaran/nvm.fish

# Install specific target version
set --universal nvm_default_version v18.17
nvm install $nvm_default_version

# Use
nvm use $nvm_default_version

