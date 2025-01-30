return {
	"nvimtools/none-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.rubocop,
				null_ls.builtins.formatting.rubocop,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.eslint_lsp,
			},
		})
		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "code format" })
		vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "show diagnostics" })
		vim.keymap.set("v", "<leader>rf", vim.lsp.buf.format, { desc = "range format" })
		vim.keymap.set("n", "<leader>cl", function()
			local line_number = vim.fn.line(".")
			local current_file = vim.fn.expand("%")
			vim.cmd("!rubocop " .. current_file .. " --only LineNumber/" .. current_file .. ":" .. line_number)
		end, { noremap = true, silent = true, desc = "rubocop for single line" })
	end,
}
-- explore trouble.nvim
-- Code actions, diagnostics, formatting, hover, completion
