vim.g.mapleader = " "

local keymap = vim.keymap
-- insert mode --
keymap.set("i", "jk", "<ESC>")

-- window
keymap.set("n", "<leader>sv", "<C-w>v") -- horizen
keymap.set("n", "<leader>sh", "<C-w>s") -- chui zhi

-- plugins
--
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")
