local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'gopls',
	'sumneko_lua',
	'tsserver',
	'clangd',
	'rust-analyzer',
})

lsp.setup()
