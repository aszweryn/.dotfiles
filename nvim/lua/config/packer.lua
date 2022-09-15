vim.cmd("packadd packer.nvim")

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'navarasu/onedark.nvim'
  use 'EdenEast/nightfox.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'}
end)
