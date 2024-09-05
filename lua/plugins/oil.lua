return {
	"stevearc/oil.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local oil = require("oil")
		oil.setup({
			view_options = {
				is_hidden_file = function(name)
					return vim.startswith(name, ".git")
				end,
			},
		})
		vim.keymap.set("n", "-", oil.toggle_float, { desc = "oil" })
	end,
}
