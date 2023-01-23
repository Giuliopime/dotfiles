-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { {'nvim-lua/plenary.nvim'} } }

  use( 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

  use {
     'nvim-lualine/lualine.nvim',
     requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'andweeb/presence.nvim'

  use 'junegunn/vim-emoji'
  use {
    'xiyaowong/telescope-emoji',
    requires = {'nvim-telescope/telescope.nvim'},
    config = function()
      require'telescope'.load_extension('emoji')
    end
  }

  use { "nvim-telescope/telescope-file-browser.nvim" }

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    'neovim/nvim-lspconfig'
  }

  use({
     "glepnir/lspsaga.nvim",
     branch = "main",
     config = function()
        require('lspsaga').setup({
           symbol_in_winbar = {
              enable = false,
           },
        })
     end,
  })

  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-buffer'
 }

 use 'hrsh7th/vim-vsnip'
 use 'hrsh7th/cmp-vsnip'
 use 'hrsh7th/vim-vsnip-integ'
 use 'windwp/nvim-ts-autotag'
 use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
 }

 use 'nvim-tree/nvim-web-devicons'
 -- use({ "ellisonleao/gruvbox.nvim", config = function() vim.cmd('colorscheme gruvbox') end })
 use 'ellisonleao/gruvbox.nvim'

 use 'tjdevries/colorbuddy.vim'
 use 'svrana/neosolarized.nvim'
 use 'norcalli/nvim-colorizer.lua'
 use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}
end)
