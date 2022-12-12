vim.cmd("packadd packer.nvim")

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim'
	use 'navarasu/onedark.nvim'
	use 'EdenEast/nightfox.nvim'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'lukas-reineke/indent-blankline.nvim'
	use {
		"cuducos/yaml.nvim",
		ft = {"yaml"}, -- optional
		requires = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-telescope/telescope.nvim" -- optional
		},
	}
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
