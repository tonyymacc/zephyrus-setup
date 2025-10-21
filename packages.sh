#!/bin/bash
set -e

echo "Installing packages..."
yay -S --needed --noconfirm \
  alacritty \
  bash-completion \
  bat \
  brightnessctl \
  cargo \
  dkms \
  egl-wayland \
  elephant \
  elephant-desktopapplications \
  eza \
  fd \
  firefox \
  fzf \
  git \
  hypridle \
  hyprland \
  hyprlock \
  hyprpaper \
  hyprpicker \
  hyprpolkitagent \
  iwd \
  kvantum \
  lazygit \
  libnewt \
  libva-nvidia-driver \
  linux-headers \
  luarocks \
  mako \
  nano \
  nano-syntax-highlighting \
  nautilus \
  neovim \
  nodejs \
  nvidia-dkms \
  nvidia-utils \
  nwg-look \
  openssh \
  pamixer \
  starship \
  ttf-jetbrains-mono-nerd \
  udiskie \
  uwsm \
  walker \
  waybar \
  wayland-protocols \
  wireplumber \
  wl-clip-persist \
  wl-clipboard \
  xdg-desktop-portal-hyprland \
  xorg-xwayland \
  yazi \
  zoxide \
  ags-hyprpanel-git

echo "Installation complete!"
