#!/bin/bash



####### pyenv ########

# Check if ~/.pyenv exists
if [ -d "$HOME/.pyenv" ]; then
    echo "~/.pyenv already exists. Skipping installation."
else
    # Install pyenv
    echo "Installing pyenv..."
    curl https://pyenv.run | bash
fi