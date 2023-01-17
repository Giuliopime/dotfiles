require("telescope").setup {
   extensions = {
      emoji = {
         action = function(emoji)
            -- argument emoji is a table.
            -- {name="", value="", cagegory="", description=""}

            -- insert emoji when picked
            vim.api.nvim_put({ emoji.value }, 'c', false, true)
         end,
      },
      file_browser = {
         cwd_to_path = true
      }
   },
}

require('telescope').load_extension "file_browser"

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', "<Cmd>Telescope file_browser<CR>", { noremap = true })
