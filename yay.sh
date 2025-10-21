#!/bin/bash
set -e

if ! command -v yay &>/dev/null; then
  echo "Installing yay..."
  sudo pacman -Syu --noconfirm
  sudo pacman -S --needed --noconfirm git base-devel go
  git clone https://aur.archlinux.org/yay.git
  cd yay && makepkg -si
  cd .. && rm -rf yay
  echo "Yay installed!"
else
  echo "Yay already installed!"
fi
