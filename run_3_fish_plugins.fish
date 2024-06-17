#!/usr/bin/env fish

############ Fisher ############
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
fisher install jorgebucaran/fisher

############ Z Script ############
fisher install jethrokuan/z

############ NVM ############
## Install nvm
fisher install jorgebucaran/nvm.fish

## Install specific target version
# Set target version variable
set NODE_TARGET_VERSION = "18.17"

set --universal nvm_default_version $NODE_TARGET_VERSION
nvm install $NODE_TARGET_VERSION

## Use
nvm use $NODE_TARGET_VERSION
