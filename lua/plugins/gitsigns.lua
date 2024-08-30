return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require('gitsigns').setup({
      signs = {
    add          = { text = '│' },
    change       = { text = '│' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
    })
    vim.keymap.set('n', '<leader>hp', 'preview_hunk', {})
  end,
}
