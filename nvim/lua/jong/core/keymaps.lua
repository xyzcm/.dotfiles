vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<C-a>", "gg<S-v>G")

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>o", ":Neotree filesystem reveal left<CR>")

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", {})
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", {})
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", {})
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", {})

vim.keymap.set('n', 'dw', 'vb"_d')

