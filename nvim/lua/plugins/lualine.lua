return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      require('lualine').setup {
        options = {
          section_separators = '',
          component_separators = '',
          icons_enabled = false,
          theme = 'gruvbox',
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {
            'filename',
          },
          lualine_x = {},
          lualine_y = {'location'},
          lualine_z = {'filetype'}
        },
      }
    end
  }
}
