vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<C-a>", "gg<S-v>G")

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", {})
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", {})
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", {})
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", {})

vim.keymap.set("n", "dw", 'vb"_d')
vim.keymap.set("n", "x", '"_x')

vim.keymap.set("n", "tn", "<cmd>tabnew<CR>", {})
vim.keymap.set("n", "te", ":tabedit", {})
vim.keymap.set("n", "<tab>", "gt<CR>", {})
vim.keymap.set("n", "<S-tab>", "gT<CR>", {})
vim.keymap.set("n", "tw", "<cmd>tabclose<CR>", {})

vim.keymap.set("n", "zh", "<cmd>split<CR>", {})
vim.keymap.set("n", "zv", "<cmd>vsplit<CR>", {})

vim.keymap.set("n", "<C-A-h>", "<C-w><", {})
vim.keymap.set("n", "<C-A-l>", "<C-w>>", {})
vim.keymap.set("n", "<C-A-k>", "<C-w>+", {})
vim.keymap.set("n", "<C-A-j>", "<C-w>-", {})

