local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- exit insert mode quickly
keymap.set("i", "kj", "<ESC>", opts)

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- exit from highlighted search
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- add space
keymap.set("n", "<Space><Space>", "i<Space><ESC>", opts)

-- save, quit
keymap.set("n", "<leader>w", "<cmd>w<CR>", opts)
keymap.set("n", "<leader>q", "<cmd>q<CR>", opts)

-- split windows
keymap.set("n", "zh", "<cmd>split<CR>", opts)
keymap.set("n", "zv", "<cmd>vsplit<CR>", opts)
keymap.set("n", "zx", "<cmd>close<CR>", opts)

-- window navigation
keymap.set("n", "<C-h>", "<C-w><C-h>", opts)
keymap.set("n", "<C-l>", "<C-w><C-l>", opts)
keymap.set("n", "<C-j>", "<C-w><C-j>", opts)
keymap.set("n", "<C-k>", "<C-w><C-k>", opts)

-- resize window
keymap.set("n", "<A-left>", "<C-w><", opts)
keymap.set("n", "<A-right>", "<C-w>>", opts)
keymap.set("n", "<A-up>", "<C-w>+", opts)
keymap.set("n", "<A-down>", "<C-w>-", opts)

-- delete a word backwards
keymap.set("n", "dw", 'vb"_d')
keymap.set("n", "x", '"_x')

-- tabs
keymap.set("n", "to", "<cmd>tabnew<CR>", opts) -- new empty tab
keymap.set("n", "te", "<cmd>tabedit", opts) -- new tab with path selection
keymap.set("n", "tu", "<cmd>tabedit %<CR>", opts) -- new tab with current buffer
keymap.set("n", "<tab>", "gt<CR>", opts)
keymap.set("n", "<S-tab>", "gT<CR>", opts)
keymap.set("n", "tq", "<cmd>tabclose<CR>", opts)

-- increment/decrement number
keymap.set("n", "<leader>=", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")
