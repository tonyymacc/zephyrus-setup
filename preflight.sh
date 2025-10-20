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

echo -e "\nCloning from: https://github.com/tonyymacc/zephyrus-setup.git"
rm -rf ~/zephyrus-setup
git clone "https://github.com/${ZEPHYRUS_REPO}.git" ~/

echo -e "\nInstallation starting..."
source ~/zephyrus-setup/init.sh
