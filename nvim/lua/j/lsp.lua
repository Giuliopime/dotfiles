local lsp = require('lsp-zero')

local on_attach = function(_, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({ buffer = bufnr })

  vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.rename() end)
  vim.keymap.set("n", "<leader>fo", function() vim.lsp.buf.format() end)
  vim.keymap.set("n", "<leader>a", function() vim.lsp.buf.code_action() end)
end

lsp.on_attach(on_attach)

-- (Optional) Configure lua language server for neovim
local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')

cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({ select = false }),

    -- Shift+Space to trigger completion menu
    ['<S-Space>'] = cmp.mapping.complete(),
    ['<Tab>'] = cmp.mapping.select_next_item()
  }
})

lsp.setup()

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})