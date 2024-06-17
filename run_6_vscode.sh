#!/usr/bin/env bash

echo "Installing Visual Studio code extensions and config."

code -v > /dev/null
if [[ $? -eq 0 ]];then
    read -r -p "Do you want to install VSC extensions? [y|N] " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then
        ok "Installing extensions please wait..."
        code --install-extension mikestead.dotenv
        code --install-extension vscode-icons-team.vscode-icons
        code --install-extension ms-vscode-remote.remote-wsl
        code --install-extension ms-azuretools.vscode-docker
        code --install-extension kamikillerto.vscode-colorize
        code --install-extension github.vscode-github-actions
        code --install-extension GitHub.copilot
        code --install-extension GitHub.copilot-chat
        code --install-extension eamodio.gitlens
        code --install-extension ms-python.isort
        code --install-extension bierner.markdown-preview-github-styles
        code --install-extension esbenp.prettier-vscode
        code --install-extension ChakrounAnas.turbo-console-log

        ok "Extensions for VSC have been installed. Please restart your VSC."
    else
        ok "Skipping extension install.";
    fi

    read -r -p "Do you want to overwrite user config? [y|N] " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then
        read -r -p "Do you want to back up your current user config? [Y|n] " backupresponse
        if [[ $backupresponse =~ ^(n|no|N) ]];then
            ok "Skipping user config save."
        else
            cp $HOME/Library/Application\ Support/Code/User/settings.json $HOME/Library/Application\ Support/Code/User/settings.backup.json
            ok "Your previous config has been saved to: $HOME/Library/Application Support/Code/User/settings.backup.json"
        fi
        cp ./settings.json $HOME/Library/Application\ Support/Code/User/settings.json

        ok "New user config has been written. Please restart your VSC."
    else
        ok "Skipping user config overwriting.";
    fi
else
    error "It looks like the command 'code' isn't accessible."
    error "Please make sure you have Visual Studio Code installed"
    error "And that you executed this procedure: https://code.visualstudio.com/docs/setup/mac"
fi