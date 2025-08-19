-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- ~/.config/nvim/lua/config/options.lua

-- Tab settings: use 4 spaces for tabs
vim.opt.tabstop = 4 -- Number of spaces a <Tab> counts for
vim.opt.shiftwidth = 4 -- Number of spaces for each indent
vim.opt.expandtab = true -- Convert tabs to spaces

-- Enable line wrapping
vim.opt.wrap = true -- Wrap lines when they exceed window width

vim.g.autoformat = false
