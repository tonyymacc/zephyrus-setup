#!/bin/bash
set -e

echo "Updating system and installing yay..."
sudo pacman -Syu --needed --noconfirm git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
cd .. && rm -rf yay

echo "Yay installed!"
