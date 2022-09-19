return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'morhetz/gruvbox'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'ntpeters/vim-better-whitespace'
  use 'neovim/nvim-lspconfig'
  use 'ray-x/lsp_signature.nvim'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'andweeb/presence.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use {
    'startup-nvim/startup.nvim',
    requires = {'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim'},
    config = function()
	require'startup'.setup({theme = 'dashboard'})
    end
  }
  use 'junegunn/vim-emoji'
  use {
    'xiyaowong/telescope-emoji',
    requires = {'nvim-telescope/telescope.nvim'},
    config = function()
      require'telescope'.load_extension('emoji')
    end
  }
end)
