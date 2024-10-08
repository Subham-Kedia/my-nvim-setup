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
		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
	end,
}
-- explore trouble.nvim
-- Code actions, diagnostics, formatting, hover, completion
