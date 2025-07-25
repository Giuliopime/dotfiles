return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			modules = {},

			-- Add languages to be installed here that you want installed for treesitter
			ensure_installed = {
				"c",
				"cpp",
				"go",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"tsx",
				"typescript",
				"vim",
				"vimdoc",
			},
			ignore_install = {},

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			auto_install = false,

			-- highlight = {
			-- 	enable = true,
			-- 	disable = function(_, bufnr)
			-- 		return vim.api.nvim_buf_line_count(bufnr) > 10000
			-- 	end,
			-- 	additional_vim_regex_highlighting = false,
			-- },

			-- indent = { enable = true, disable = { "python", "markdown" } },

			textobjects = {
				select = {
					enable = true,
					lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
					keymaps = {
						-- You can use the capture groups defined in textobjects.scm
						["aa"] = "@parameter.outer",
						["ia"] = "@parameter.inner",
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
					},
				},
				-- move = {
				-- 	enable = true,
				-- 	set_jumps = true, -- whether to set jumps in the jumplist
				-- 	goto_next_start = {
				-- 		["]m"] = "@function.outer",
				-- 		["]]"] = "@class.outer",
				-- 	},
				-- 	goto_next_end = {
				-- 		["]M"] = "@function.outer",
				-- 		["]["] = "@class.outer",
				-- 	},
				-- 	goto_previous_start = {
				-- 		["[m"] = "@function.outer",
				-- 		["[["] = "@class.outer",
				-- 	},
				-- 	goto_previous_end = {
				-- 		["[M"] = "@function.outer",
				-- 		["[]"] = "@class.outer",
				-- 	},
				-- },
				-- swap = {
				-- 	enable = true,
				-- 	swap_next = {
				-- 		["<leader>a"] = "@parameter.inner",
				-- 	},
				-- 	swap_previous = {
				-- 		["<leader>A"] = "@parameter.inner",
				-- 	},
				-- },
			},
		})
	end,
}
