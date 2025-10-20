#!/bin/bash
# Clone LazyVim starter
git clone https://github.com/LazyVim/starter ~/.config/nvim

# Remove .git
rm -rf ~/.config/nvim/.git

echo "Installation complete. Run 'nvim' to start."
