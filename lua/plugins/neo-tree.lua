return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local neo_tree = require("neo-tree")
		neo_tree.setup({
			filesystem = {
				filtered_items = {
					visible = false,
					hide_dotfiles = false,
					hide_by_name = {
						".git",
					},
				},
			},
		})

		vim.keymap.set("n", "<C-b>", ":Neotree filesystem reveal left toggle<CR>", {})
		vim.keymap.set("n", "<C-s>", ":Neotree<CR>", {})
	end,
}
