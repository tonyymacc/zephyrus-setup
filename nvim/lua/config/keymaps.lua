-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Remap ijkl for navigation
vim.keymap.set("n", "i", "k", { noremap = true, silent = true }) -- Up
vim.keymap.set("n", "k", "j", { noremap = true, silent = true }) -- Down
vim.keymap.set("n", "j", "h", { noremap = true, silent = true }) -- Left
vim.keymap.set("n", "l", "l", { noremap = true, silent = true }) -- Right (unchanged, but included for clarity)

-- Optionally, remap in visual mode
vim.keymap.set("v", "i", "k", { noremap = true, silent = true })
vim.keymap.set("v", "k", "j", { noremap = true, silent = true })
vim.keymap.set("v", "j", "h", { noremap = true, silent = true })
vim.keymap.set("v", "l", "l", { noremap = true, silent = true })
