vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.relativenumber = true
vim.opt.number = true
vim.g.mapleader = " "

-- Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevelstart = 99

-- vertical split
vim.keymap.set("n", "<Leader>v", ":vsp<CR>", { desc = "v split", noremap = true, silent = true })

-- handling window movement
vim.keymap.set("n", "<Leader>w", "<C-w>", { desc = "window", noremap = true, silent = true })
-- handling tabs
vim.keymap.set("n", "<Leader>tn", ":tabnew<CR>", { desc = "new tab", noremap = true, silent = true })
vim.keymap.set("n", "<Leader>tc", ":tabclose<CR>", { desc = "close tab", noremap = true, silent = true })
vim.keymap.set("n", "<Leader>ts", ":tab split<CR>", { desc = "split tab", noremap = true, silent = true })
-- Todos
vim.keymap.set("n", "<Leader>td", ":TodoTelescope<CR>", { desc = "Todo List" })
vim.keymap.set("v", "<Leader>cp", '"+y', { desc = "Copy Selected" })
