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
    --requires = {
    --   'kyazdani42/nvim-web-devicons', -- optional, for file icons
    --},
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
end)
