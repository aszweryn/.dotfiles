local nnoremap = require("config.keymap").nnoremap

nnoremap("<leader>sl", "<cmd>set list<CR>")
nnoremap("<leader>ls", "<cmd>set nolist<CR>")

-- Packer
nnoremap("<leader>ps", "<cmd>PackerSync<CR>")

-- Nvim-tree
nnoremap("<leader>nt", "<cmd>NvimTreeToggle<CR>")
nnoremap("<leader>nf", "<cmd>NvimTreeFocus<CR>")

-- Telescope
nnoremap ("<leader>ff", "<cmd>Telescope find_files hidden=true<cr>")
nnoremap ("<leader>fg", "<cmd>Telescope live_grep hidden=true<cr>")
nnoremap ("<leader>fb", "<cmd>Telescope buffers hidden=true<cr>")
nnoremap ("<leader>fh", " <cmd>Telescope help_tags hidden=true<cr>")

