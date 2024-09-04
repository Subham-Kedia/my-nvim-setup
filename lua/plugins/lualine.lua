-- fast and easy to configure statusline plugin for neovim
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- for supporting icons in status line
	config = function()
		local lualine = require("lualine")
		lualine.setup({
			options = {
				theme = "dracula",
			},
		})
	end,
}
