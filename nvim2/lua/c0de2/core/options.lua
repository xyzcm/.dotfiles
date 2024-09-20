vim.opt.relativenumber = true
vim.opt.number = true

-- tabs & indents
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.wrap = false

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.cursorline = true

-- colorscheme gui color
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

-- backspace
vim.opt.backspace = {"start", "indent", "eol"}

-- clipboard
vim.opt.clipboard:append("unnamedplus")

--split windows
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.splitkeep = cursor -- keep current cursor position onto split window

-- incremental command
vim.opt.inccommand = "split"

