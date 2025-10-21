#!/bin/bash
set -e

echo "Updating system..."
sudo pacman -Syu --noconfirm
echo "Installing go and dependencies..."
sudo pacman -S --needed --noconfirm git base-devel go
echo "Installing yay..."
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
cd .. && rm -rf yay

echo "Yay installed!"
