-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true
vim.o.relativenumber = true

-- Enable break indent
vim.o.breakindent = true

-- Disable wrapping
vim.o.wrap = false

-- Save undo history
vim.o.undofile = true

-- Smart searching
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Clipboard and completion
vim.opt.clipboard = 'unnamedplus'
vim.o.completeopt = 'menuone,noselect'
vim.o.conceallevel = 2

-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- True color support
vim.o.termguicolors = true
