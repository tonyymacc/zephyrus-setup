#!/bin/bash
# Ensure fish is in valid shells
grep -q "/usr/bin/fish" /etc/shells || echo "/usr/bin/fish" | sudo tee -a /etc/shells

# Change shell
sudo chsh -s /usr/bin/fish "$USER" || {
  echo "Failed to change shell!"
  exit 1
}

echo "Shell changed to fish! Re-login to apply."
