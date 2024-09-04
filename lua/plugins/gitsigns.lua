return {
	"lewis6991/gitsigns.nvim",
	config = function()
		local gitsigns = require("gitsigns")
		-- check default configuration
		-- :help gitsigns-usage

		local function nav_hunk()
			gitsigns.nav_hunk("next", { wrap = true, preview = true })
		end

		gitsigns.setup({
			current_line_blame = true,
		})
		vim.keymap.set("n", "<leader>hp", gitsigns.preview_hunk, { desc = "hunk preview" })
		vim.keymap.set("n", "<leader>hd", gitsigns.diffthis, { desc = "buffer diff" })
		vim.keymap.set("n", "<leader>hn", nav_hunk, { desc = "buffer diff" })
	end,
}
