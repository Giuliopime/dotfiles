local opts = { noremap = true, silent = true }
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', 'gf', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'ga', '<Cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'dn', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'sd', '<Cmd>Lspsaga show_diagnostic<CR>', opts)
