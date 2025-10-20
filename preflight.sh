#!/bin/bash

# Set install mode to online since boot.sh is used for curl installations

ansi_art='
 ▄███████▄     ▄████████    ▄███████▄    ▄█    █▄    ▄██   ▄      ▄████████ ███    █▄     ▄████████ 
██▀     ▄██   ███    ███   ███    ███   ███    ███   ███   ██▄   ███    ███ ███    ███   ███    ███ 
      ▄███▀   ███    █▀    ███    ███   ███    ███   ███▄▄▄███   ███    ███ ███    ███   ███    █▀  
 ▀█▀▄███▀▄▄  ▄███▄▄▄       ███    ███  ▄███▄▄▄▄███▄▄ ▀▀▀▀▀▀███  ▄███▄▄▄▄██▀ ███    ███   ███        
  ▄███▀   ▀ ▀▀███▀▀▀     ▀█████████▀  ▀▀███▀▀▀▀███▀  ▄██   ███ ▀▀███▀▀▀▀▀   ███    ███ ▀███████████ 
▄███▀         ███    █▄    ███          ███    ███   ███   ███ ▀███████████ ███    ███          ███ 
███▄     ▄█   ███    ███   ███          ███    ███   ███   ███   ███    ███ ███    ███    ▄█    ███ 
 ▀████████▀   ██████████  ▄████▀        ███    █▀     ▀█████▀    ███    ███ ████████▀   ▄████████▀  
                                                                 ███    ███                      '

clear
echo -e "\n$ansi_art\n"

sudo pacman -Syu --noconfirm --needed git

# Use custom repo if specified, otherwise default to basecamp/omarchy
ZEPHYRUS_REPO="${ZEPHYRUS_REPO:-tonyymacc/zephyrus-setup}"

echo -e "\nCloning from: https://github.com/${ZEPHYRUS_REPO}.git"
rm -rf ~/zephyrus-setup
git clone "https://github.com/${ZEPHYRUS_REPO}.git" ~/

echo -e "\nInstallation starting..."
source ~/zephyrus-setup/init.sh
