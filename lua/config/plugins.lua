-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'williamboman/mason.nvim'
  use 'neovim/nvim-lspconfig'
  use 'mbbill/undotree'

  use ({
      'rose-pine/neovim',
      as = 'rose-pine',
      config = function()
          vim.cmd('colorscheme rose-pine')
      end
  })

  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})

  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          {'nvim-tree/nvim-web-devicons'}
      }
  }

  use 'f-person/git-blame.nvim'
end)
