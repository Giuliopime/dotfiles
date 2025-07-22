### nvim

keymaps:

*NORMAL mode*
- `gcc` toggle line using linewise comment
- `gbc` toggle line using blockwise comment

*VISUAL mode*  
- `gc` toggle region using linewise comment
- `gb` toggle region using blockwise comment

commands:
- `:LspInstall <lsp_name>`

plugins:
- lspconfig
  language server names: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#pyright

process to support a new language:
- install language server with :Mason
- add server in lspconfig (`nvim/lua/j/plugins/lsp.lua`)
- add language to treesitter (`nvim/lua/j/plugins/treesitter.lua`)

future improvements:
- conform for autoformatting
- fugitive / gitsigngs for git integration
- file navigator (maybe picker from snacks.nvim?)
- configure keymaps properly and specify them in which-key
- diagnostics with trouble.nvim


---
References:
- neovim config article: https://dzx.fr/blog/modern-neovim-config-from-scratch/
- neovim config example: https://git.dzx.fr/gdzx/nvim
