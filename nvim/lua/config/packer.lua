vim.cmd("packadd packer.nvim")

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim'
	use 'EdenEast/nightfox.nvim'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
		},
		tag = 'nightly'
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'lukas-reineke/indent-blankline.nvim'
	use {
	"windwp/nvim-autopairs",
	config = function() require("nvim-autopairs").setup {} end
	}
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}
end)
