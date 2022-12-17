local set = vim.opt
set.guicursor = ""

set.nu = true
set.relativenumber = true

set.expandtab = false
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4

set.scrolloff = 8
set.signcolumn = 'auto'
set.isfname:append("@-@")


set.updatetime = 50

set.incsearch = true
set.hlsearch = false
set.smartcase = true
set.ignorecase = true

set.swapfile = false
set.backup = false
set.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"
set.undofile = true

set.smartindent = true
set.wrap = false

vim.g.mapleader = " "

set.termguicolors = true

set.laststatus = 3
