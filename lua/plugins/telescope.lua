-- telescope finding files, searching texts with ripgrep, help section, buffers
-- fuzzy finding | search, filter, and pick things in lua
return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          sorting_strategy = "descending",
          preview = {
            treesitter = false,
          },
          file_ignore_patterns = {
            "%.git/",
            "node_modules/",
            "dist/",
            "build/",
            "%.next/",
            "%.cache/",
            "coverage/",
            "%.DS_Store",
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")

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
  },
}
