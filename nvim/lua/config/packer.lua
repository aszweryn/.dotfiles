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
	-- Ripgrep-based filtering tool
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- All LSP-related pluggins
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}
	-- Listchars, indentation helper
	use 'lukas-reineke/indent-blankline.nvim'
	-- Autopairing brackets
	use {
	"windwp/nvim-autopairs",
	config = function() require("nvim-autopairs").setup {} end
	}
	-- Themes
	use 'folke/tokyonight.nvim'
	use 'EdenEast/nightfox.nvim'
end)
