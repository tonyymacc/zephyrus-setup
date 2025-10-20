#!/bin/bash

for script in packages.sh nvim.sh copy.sh network.sh autologin.sh AMD.sh nvidia.sh shell.sh; do
  [[ -f "$HOME/zephyrus-setup/$script" ]] || {
    echo "$script not found!"
    exit 1
  }
done

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
bash "$HOME/zephyrus-setup/AMD.sh" || {
  echo "AMD.sh failed!"
  exit 1
}

echo "Configuring Nvidia settings..."
bash "$HOME/zephyrus-setup/nvidia.sh" || {
  echo "nvidia.sh failed!"
  exit 1
}

echo "Changing user shell to fish..."
bash "$HOME/zephyrus-setup/shell.sh" || {
  echo "shell.sh failed!"
  exit 1
}

echo "All done!"
