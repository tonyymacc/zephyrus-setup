#!/bin/bash
set -e

echo "Installing packages..."
yay -S --needed --noconfirm \
  alacritty \
  bash-completion \
  bat \
  brightnessctl \
  cargo \
  clang \
  dkms \
  egl-wayland \
  elephant \
  elephant-desktopapplications \
  evince \
  eza \
  fd \
  firefox \
  ffmpegthumbnailer \
  fzf \
  git \
  hypridle \
  hyprland \
  hyprlock \
  hyprpaper \
  hyprpicker \
  hyprpolkitagent \
  imv \
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
  networkmanager \
  nodejs \
  nvidia-dkms \
  nvidia-utils \
  nwg-look \
  openssh \
  pamixer \
  playerctl \
  starship \
  sushi \
  ttf-jetbrains-mono \
  ttf-jetbrains-mono-nerd \
  udiskie \
  uwsm \
  walker-bin \
  waybar \
  wayland-protocols \
  wireplumber \
  wl-clip-persist \
  wl-clipboard \
  xdg-desktop-portal-gtk \
  xdg-desktop-portal-hyprland \
  xorg-xwayland \
  yazi \
  zoxide \
  ags-hyprpanel-git

echo "Installation complete!"
