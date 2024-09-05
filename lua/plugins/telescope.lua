-- telescope finding files, searching texts with ripgrep, help section, buffers
-- fuzzy finding | search, filter, and pick things in lua
return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep" },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          sorting_strategy = "descending",  --descending | ascending
          file_ignore_patterns = {
            ".git/",
          },
        },
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", function()
        builtin.find_files({ hidden = true })
      end, { desc = "Find Files" })
      vim.keymap.set("n", "<leader>fg", function()
        builtin.live_grep({ previewer = true })
      end, { desc = "live grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "help tags" })
      vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "resume telescope" })
    end,
    -- TODO: Explore
    -- builtin functions
    -- git_branches
    -- git_status
    -- resume
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
