-- This function gets run when an LSP connects to a particular buffer.
local function generic_on_attach(client, bufnr)
  local keymap = function(mode, keys, func, opts)
    opts.buffer = bufnr
    vim.keymap.set(mode, keys, func, opts)
  end

  keymap('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
  keymap('n', 'gD', vim.lsp.buf.declaration, { desc = 'Go to declaration' })
  keymap('n', 'gI', vim.lsp.buf.implementation, { desc = 'Go to implementation' })
  keymap('n', 'gy', vim.lsp.buf.type_definition, { desc = 'Go to type definition' })
  keymap('n', 'gr', vim.lsp.buf.references, { desc = 'List references' })

  keymap("n", "gK", vim.lsp.buf.signature_help, { desc = "Open signature documentation" })
  keymap("i", "<C-k>", vim.lsp.buf.signature_help, { desc = "Open signature documentation" })

  keymap("n", "<leader>r", vim.lsp.buf.rename, { desc = "Rename symbol" })
  keymap("n", "<leader>fo", vim.lsp.buf.format, { desc = "Format" })
  keymap("n", "<leader>a", vim.lsp.buf.code_action, { desc = "Code action" })
end

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp",
    "williamboman/mason.nvim"
  },
  opts = {
    -- names: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#pyright
    servers = {
      lua_ls = {
        settings = {
          lua = {
            workspace = { checkthirdparty = false },
            telemetry = { enable = false },
          },
        },
      },
      pyright = {},
      terraformls = {}
    },
  },
  config = function(_, opts)
    -- blink.cmp supports additional completion capabilities, so broadcast
    -- that to servers.
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    for name, conf in pairs(opts.servers) do
      local on_attach = generic_on_attach

      if conf.on_attach then
        on_attach = function(client, bufnr)
          generic_on_attach(client, bufnr)
          conf.on_attach(client, bufnr)
        end
      end

      vim.lsp.config(name, {
        capabilities = capabilities,
        settings = conf.settings,
        on_attach = function(client, bufnr)
          local _, err = pcall(on_attach, client, bufnr)
          if err then
            vim.notify("[lsp on_attach] " .. err, vim.log.levels.error)
          end
        end,
      })
    end
  end,
}
