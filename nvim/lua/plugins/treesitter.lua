return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
            local configs = require("nvim-treesitter.configs")

            configs.setup {
                -- A list of parser names, or "all" (the four listed parsers should always be installed)
                ensure_installed = {
                  "markdown",
                  "bash",
                  "html",
                  "css",
                  "jsdoc",
                  "yaml",
                  "json",
                  "toml",
                  "lua",
                  "sql",
                  "dockerfile",
                  "gitignore"
                },
              
                -- Install parsers synchronously (only applied to `ensure_installed`)
                sync_install = false,
              
                -- Automatically install missing parsers when entering buffer
                -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
                auto_install = true,
              
                ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
                -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
              
                highlight = {
                  -- `false` will disable the whole extension
                  enable = true,
              
                  -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                  -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                  -- Using this option may slow down your editor, and you may see some duplicate highlights.
                  -- Instead of true it can also be a list of languages
                  additional_vim_regex_highlighting = false,
                }
              }
        end
    }
}