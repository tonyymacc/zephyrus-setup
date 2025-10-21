#!/bin/bash

for script in aur.sh packages.sh nvim.sh copy.sh autologin.sh amd.sh nvidia.sh firewall.sh bluetooth.sh theme.sh; do
  [[ -f "$HOME/zephyrus-setup/$script" ]] || {
    echo "$script not found!"
    exit 1
  }
done

echo "Installing AUR..."
bash "$HOME/zephyrus-setup/aur.sh" || {
  echo "aur.sh failed!"
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

echo "Configuring firewall settings..."
bash "$HOME/zephyrus-setup/firewall.sh" || {
  echo "firewall.sh failed!"
  exit 1
}

echo "Configuring bluetooth settings..."
bash "$HOME/zephyrus-setup/bluetooth.sh" || {
  echo "bluetooth.sh failed!"
  exit 1
}

echo "Configuring theme settings..."
bash "$HOME/zephyrus-setup/theme.sh" || {
  echo "theme.sh failed!"
  exit 1
}

echo "All done!"
