#!/bin/bash

for script in yay.sh packages.sh nvim.sh copy.sh network.sh autologin.sh amd.sh nvidia.sh; do
  [[ -f "$HOME/zephyrus-setup/$script" ]] || {
    echo "$script not found!"
    exit 1
  }
done

echo "Installing yay..."
bash "$HOME/zephyrus-setup/yay.sh" || {
  echo "yay.sh failed!"
  exit 1
}

echo "Installing packages..."
bash "$HOME/zephyrus-setup/packages.sh" || {
  echo "packages.sh failed!"
  exit 1
}

echo "Installing LazyVim..."
bash "$HOME/zephyrus-setup/nvim.sh" || {
  echo "nvim.sh failed!"
  exit 1
}

echo "Copying dotfiles..."
bash "$HOME/zephyrus-setup/copy.sh" || {
  echo "copy.sh failed!"
  exit 1
}

echo "Configuring network..."
bash "$HOME/zephyrus-setup/network.sh" || {
  echo "network.sh failed!"
  exit 1
}

echo "Configuring autologin..."
bash "$HOME/zephyrus-setup/autologin.sh" || {
  echo "autologin.sh failed!"
  exit 1
}

echo "Configuring AMD settings..."
bash "$HOME/zephyrus-setup/amd.sh" || {
  echo "AMD.sh failed!"
  exit 1
}

echo "Configuring Nvidia settings..."
bash "$HOME/zephyrus-setup/nvidia.sh" || {
  echo "nvidia.sh failed!"
  exit 1
}

echo "All done!"
