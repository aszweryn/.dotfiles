require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

--> Required LSP's
require("mason-lspconfig").setup({
	ensure_installed = { "sumneko_lua", "pyright", "gopls"}
})

require("lspconfig").sumneko_lua.setup {
	on_attach = on_attach
}

local on_attach = function(_, _)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
	vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require("lspconfig").pyright.setup {
	on_attach = on_attach
}

require("lspconfig").gopls.setup {
	on_attach = on_attach
}

