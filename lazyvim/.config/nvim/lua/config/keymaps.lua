-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Clear default <leader>w mapping (window manipulation)
-- vim.keymap.set("n", "<leader>w", "<Nop>", { noremap = true, silent = true })

-- Save file with <leader>o
vim.keymap.set("n", "<leader>o", function()
  vim.cmd("write")
  vim.notify("File saved", vim.log.levels.INFO)
end, { desc = "Save file" })
vim.keymap.set("n", "<leader>w", function()
  vim.cmd("write")
  vim.notify("File saved", vim.log.levels.INFO)
end, { desc = "Save file" })

-- Map Ctrl+Backspace to Ctrl+w in normal mode
vim.keymap.set("i", "<C-BS>", "<C-w>", { noremap = true, silent = true, desc = "Window command prefix" })
vim.keymap.set("i", "<C-h>", "<C-w>", { noremap = true, silent = true, desc = "Window command prefix" })

-- Map Ctrl+Enter in insert mode to exit and open a new line
vim.keymap.set('i', '<C-CR>', '<Esc>o', { noremap = true, silent = true, desc = 'Exit insert mode and start new line' })
vim.keymap.set('i', '<C-j>', '<Esc>o', { noremap = true, silent = true, desc = 'Exit insert mode and start new line' })
