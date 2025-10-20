#!/bin/bash

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
rm -rf "$HOME/zephyrus-setup"
git clone https://github.com/tonyymacc/zephyrus-setup.git "$HOME/zephyrus-setup" || {
  echo "Clone failed!"
  exit 1
}

echo -e "\nInstallation starting..."
[[ -f "$HOME/zephyrus-setup/init.sh" ]] || {
  echo "init.sh not found!"
  exit 1
}
source "$HOME/zephyrus-setup/init.sh"
