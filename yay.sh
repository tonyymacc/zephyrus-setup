#!/bin/bash
set -e

echo "Installing yay..."
sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm git base-devel go
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
cd .. && rm -rf yay
echo "Yay installed!"
