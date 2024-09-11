local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set('n', '<leader>pv', vim.cmd.Ex)
keymap.set('n', '<C-a>', 'gg<S-v>G')
