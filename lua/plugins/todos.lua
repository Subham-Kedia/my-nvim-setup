return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {},
	config = function()
		local todos = require("todo-comments")
		todos.setup()
		vim.keymap.set("n", "]t", todos.jump_next, { desc = "Next Todo" })
		vim.keymap.set("n", "[t", todos.jump_prev, { desc = "Previous Todo" })
	end,
}
