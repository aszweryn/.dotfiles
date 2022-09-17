local nnoremap = require("config.keymap").nnoremap

-- Packer
nnoremap("<leader>ps", "<cmd>PackerSync<CR>")

-- Nvim-tree
nnoremap("<leader>nt", "<cmd>NvimTreeToggle<CR>")
nnoremap("<leader>nf", "<cmd>NvimTreeFocus<CR>")

-- Telescope
nnoremap ("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap ("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap ("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap ("<leader>fh", " <cmd>Telescope help_tags<cr>")

