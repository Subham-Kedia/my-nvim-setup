-- fast and easy to configure statusline plugin for neovim
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "folke/tokyonight.nvim" },
	config = function()
		local lualine = require("lualine")
		lualine.setup({
			options = {
				theme = "tokyonight",
			},
		})
	end,
}
