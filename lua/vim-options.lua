vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.g.mapleader = " "

-- vertical split
vim.keymap.set("n", "<Leader>v", ":vsp<CR>", { desc = "v split", noremap = true, silent = true })

-- handling window movement
vim.keymap.set("n", "<Leader>w", "<C-w>", { desc = "window", noremap = true, silent = true })
