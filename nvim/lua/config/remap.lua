local nnoremap = require("config.keymap").nnoremap

-- Ctrl-D and Ctrl-U with centering
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

-- Listchars toggle
nnoremap("<leader>qq", "<cmd>set list!<CR>")

-- Packer
nnoremap("<leader>qq", "<cmd>PackerSync<CR>")

-- Nvim-tree
nnoremap("<leader>nf", "<cmd>NvimTreeFocus<CR>")
nnoremap("<leader>nt", "<cmd>NvimTreeToggle<CR>")

-- Telescope
nnoremap ("<leader>ff", "<cmd>Telescope find_files hidden=true<cr>")
nnoremap ("<leader>fg", "<cmd>Telescope live_grep hidden=true<cr>")
nnoremap ("<leader>fb", "<cmd>Telescope buffers hidden=true<cr>")
nnoremap ("<leader>fh", " <cmd>Telescope help_tags hidden=true<cr>")

-- Undotree 
nnoremap ("<leader>ud", "<cmd>UndotreeToggle<cr>")
