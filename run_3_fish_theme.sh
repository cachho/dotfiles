#!/bin/bash

# Script to automatically download and install Meslo Nerd Font

############### WSL ###############
# For WSL, download these files in windows and install them and select the font in the terminal properties

# Define font download URLs
urls=(
    "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_regular.ttf?raw=true"
    "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_bold.ttf?raw=true"
    "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_italic.ttf?raw=true"
    "https://github.com/IlanCosman/tide/blob/assets/fonts/mesloLGS_NF_bold_italic.ttf?raw=true"
)

# Font installation directory
font_dir="$HOME/.local/share/fonts"
mkdir -p "$font_dir"

echo "Starting download and installation of Meslo Nerd Font..."

# Loop through URLs and download each file
for url in "${urls[@]}"; do
    file_name=$(basename "${url%?raw=true}")  # Extracts file name from URL
    echo "Downloading $file_name..."
    curl -s -L -o "$font_dir/$file_name" "$url"
done

echo "Updating font cache..."
fc-cache -fv  # Refreshes the system font cache

echo "Meslo Nerd Font installation complete!"
echo "You can now configure your terminal to use the MesloLGS NF font."

