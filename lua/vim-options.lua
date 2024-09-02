vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.g.mapleader = " "

-- Enable Tree-sitter-based folding
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldlevelstart = 99

-- vertical split
vim.keymap.set("n", "<Leader>v", ":vsp<CR>", { desc = "v split", noremap = true, silent = true })

-- handling window movement
vim.keymap.set("n", "<Leader>w", "<C-w>", { desc = "window", noremap = true, silent = true })
-- handling tabs
vim.keymap.set("n", "<Leader>tn", ":tabnew<CR>", { desc = "new tab", noremap = true, silent = true })
vim.keymap.set("n", "<Leader>tc", ":tabclose<CR>", { desc = "close tab", noremap = true, silent = true })
vim.keymap.set("n", "<Leader>ts", ":tab split<CR>", { desc = "split tab", noremap = true, silent = true })
