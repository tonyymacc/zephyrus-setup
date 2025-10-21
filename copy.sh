#!/bin/bash
mkdir -p "$HOME/.config"
for dir in hypr nvim wallpapers waybar yazi; do
  [[ -d "$HOME/zephyrus-setup/$dir" ]] || {
    echo "$dir not found!"
    exit 1
  }
done
cp -rf "$HOME/zephyrus-setup/hypr" "$HOME/zephyrus-setup/nvim" "$HOME/zephyrus-setup/wallpapers" "$HOME/zephyrus-setup/waybar" "$HOME/zephyrus-setup/yazi" "$HOME/.config/" || {
  echo "Copy failed!"
  exit 1
}

cp -rf "$HOME/zephyrus-setup/.bash_profile" "$HOME/"
cp -rf "$HOME/zephyrus-setup/.bashrc" "$HOME/"

echo "Copy done!"
