local keymap = vim.keymap

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

keymap.set('n', '<leader>pv', vim.cmd.Ex)
keymap.set('n', '<C-a>', 'gg<S-v>G')
