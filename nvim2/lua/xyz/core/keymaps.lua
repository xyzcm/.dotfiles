local keymap = vim.keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- exit insert mode quickly
keymap.set("i", "kj", "<ESC>", {})

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- exit from highlighted search
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- split windows
keymap.set("n", "zh", "<cmd>split<CR>", {})
keymap.set("n", "zv", "<cmd>vsplit<CR>", {})
keymap.set("n", "zx", "<cmd>close<CR>", {})

-- window navigation
keymap.set("n", "<C-h>", "<C-w><C-h>", {})
keymap.set("n", "<C-l>", "<C-w><C-l>", {})
keymap.set("n", "<C-j>", "<C-w><C-j>", {})
keymap.set("n", "<C-k>", "<C-w><C-k>", {})

-- resize window
keymap.set("n", "<C-A-h>", "<C-w><", {})
keymap.set("n", "<C-A-l>", "<C-w>>", {})
keymap.set("n", "<C-A-k>", "<C-w>+", {})
keymap.set("n", "<C-A-j>", "<C-w>-", {})

-- delete a word backwards
keymap.set("n", "dw", 'vb"_d')
keymap.set("n", "x", '"_x')

-- tabs
keymap.set("n", "to", "<cmd>tabnew<CR>", {}) -- new empty tab
keymap.set("n", "te", "<cmd>tabedit", {}) -- new tab with path selection
keymap.set("n", "tu", "<cmd>tabedit %<CR>", {}) -- new tab with current buffer
keymap.set("n", "<tab>", "gt<CR>", {})
keymap.set("n", "<S-tab>", "gT<CR>", {})
keymap.set("n", "tq", "<cmd>tabclose<CR>", {})

-- increment/decrement number
keymap.set("n", "<leader>=", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")
