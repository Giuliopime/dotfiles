return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		icons = {
			mappings = false,
		},
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)
		wk.add({
			{ "<leader>b", group = "buffer" },
			{ "<leader>c", group = "code" },
			{ "<leader>d", group = "diagnostics" },
			{ "<leader>f", group = "find" },
			{ "<leader>g", group = "git" },
			{ "<leader>r", group = "refactor" },
			{ "<leader>w", group = "workspace" },
			{ "[", group = "prev" },
			{ "]", group = "next" },
			{ "g", group = "goto" },
		})
	end,
}
