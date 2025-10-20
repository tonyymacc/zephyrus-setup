#!/bin/bash

echo "Intalling packages..."
bash packages.sh

echo "Configuring network..."
bash network.sh

echo "Changing user shell to fish..."
bash shell.sh

echo "Copying dotfiles..."
bash copy.sh

echo "Configuring autologin..."
bash autologin.sh

echo "Configuring Hprland..."
bash hyprlandia.sh

echo "Configuring AMD settings..."
bash AMD.sh

echo "Configuring Nvidia settings..."
bash nvidia.sh

# Reboot
echo "All done! /nRebooting in 10 seconds..."
sleep 10
sudo reboot
