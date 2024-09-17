return {
    {
        "windwp/nvim-ts-autotag",
        lazy = false,
        opts = {
            enable_close = true,
            enable_rename = true,
            enable_close_on_slash = false
        },
    },
    {
        'laytan/tailwind-sorter.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim' },
        build = 'cd formatter && npm ci && npm run build',
        config = true,
    },
}