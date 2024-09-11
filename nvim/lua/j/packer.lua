-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }

  use "windwp/nvim-autopairs"

  use('theprimeagen/harpoon')
  use('mbbill/undotree')

  use 'tjdevries/colorbuddy.vim'
  -- use 'ellisonleao/gruvbox.nvim'
  use 'morhetz/gruvbox'
  use 'nyoom-engineering/oxocarbon.nvim'
  use({
    'rose-pine/neovim',
    as = 'rose-pine'
  })
  use 'svrana/neosolarized.nvim'
  use 'craftzdog/solarized-osaka.nvim'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  use {
    'laytan/tailwind-sorter.nvim',
    requires = { 'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim' },
    config = function() require('tailwind-sorter').setup() end,
    run = 'cd formatter && npm ci && npm run build',
  }

  use { "catppuccin/nvim", as = "catppuccin" }

  use 'windwp/nvim-ts-autotag'
  use 'sindrets/diffview.nvim'
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
end)
