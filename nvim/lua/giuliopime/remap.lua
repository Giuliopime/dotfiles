local keymap = vim.keymap

keymap.set('n', '<leader>pv', vim.cmd.Ex)
keymap.set('n', '<C-a>', 'gg<S-v>G')

vim.api.nvim_set_keymap(
  "n",
  "<leader>fb",
  ":Telescope file_browser",
  { noremap = true }
)
