return {
    {
        "windwp/nvim-ts-autotag",
        lazy = false,
        config = function ()
            require('nvim-ts-autotag').setup({
                opts = {
                  -- Defaults
                  enable_close = true, -- Auto close tags
                  enable_rename = true, -- Auto rename pairs of tags
                  enable_close_on_slash = false -- Auto close on trailing </
                },
            })
        end
    },
    {
        'laytan/tailwind-sorter.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim' },
        build = 'cd formatter && npm ci && npm run build',
        config = true,
    },
}