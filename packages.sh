#!/bin/bash
sudo pacman -S --needed --noconfirm \
  alacritty \
  bash-completion \
  bat \
  bluetui \
  brightnessctl \
  dkms \
  egl-wayland \
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
  impala \
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
  nvidia-open-dkms \
  nvidia-utils \
  nwg-look \
  openssh \
  pamixer \
  starship \
  ttf-jetbrains-mono-nerd \
  udiskie \
  uwsm \
  waybar \
  wayland-protocols \
  wiremix \
  wireplumber \
  wl-clip-persist \
  wl-clipboard \
  xdg-desktop-portal-hyprland \
  xorg-xwayland \
  yazi \
  zoxide

sudo pacman -S --needed --noconfirm git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S --noconfirm ags-hyprpanel-git

echo "Packages done!"
