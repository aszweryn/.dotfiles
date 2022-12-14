vim.cmd("packadd packer.nvim")

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- Syntax highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- File explorer
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
		},
		tag = 'nightly'
	}

	-- Pretty status bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- Ripgrep-based searching
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}

	-- Autocompletion
	use {'neoclide/coc.nvim', branch = 'release'}

	-- Listchars, indentation helper
	use 'lukas-reineke/indent-blankline.nvim'

	-- Themes
	use 'folke/tokyonight.nvim'
	use 'EdenEast/nightfox.nvim'
end)

