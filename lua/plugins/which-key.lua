return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    require("which-key").setup()
    require("which-key").add({
      { "<leader>f", group = "find" },
      { "<leader>h", group = "hunk" },
      { "<leader>t", group = "tab/todo" },
      { "<leader>d", group = "debug" },
      { "<leader>r", group = "rest/rename" },
      { "<leader>c", group = "code" },
      { "<leader>l", group = "lazygit" },
    })
  end,
}
