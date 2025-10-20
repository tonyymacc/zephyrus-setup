#!/bin/bash

for script in preflight.sh packages.sh copy.sh network.sh autologin.sh AMD.sh nvidia.sh hyprlandia.sh shell.sh; do
  [[ -f "$script" ]] || {
    echo "$script not found!"
    exit 1
  }
done

bash preflight.sh || {
  echo "preflight.sh failed!"
  exit 1
}

echo "Installing packages..."
bash packages.sh || {
  echo "packages.sh failed!"
  exit 1
}

echo "Installing LazyVim..."
bash nvim.sh || {
  echo "nvim.sh failed!"
  exit 1
}

echo "Copying dotfiles..."
bash copy.sh || {
  echo "copy.sh failed!"
  exit 1
}

echo "Configuring network..."
bash network.sh || {
  echo "network.sh failed!"
  exit 1
}

echo "Configuring autologin..."
bash autologin.sh || {
  echo "autologin.sh failed!"
  exit 1
}

echo "Configuring AMD settings..."
bash AMD.sh || {
  echo "AMD.sh failed!"
  exit 1
}

echo "Configuring Nvidia settings..."
bash nvidia.sh || {
  echo "nvidia.sh failed!"
  exit 1
}

echo "Configuring Hyprland..."
bash hyprlandia.sh || {
  echo "hyprlandia.sh failed!"
  exit 1
}

echo "Changing user shell to fish..."
bash shell.sh || {
  echo "shell.sh failed!"
  exit 1
}

echo "All done!"
