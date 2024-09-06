return {
  "rest-nvim/rest.nvim",
  config = function()
    -- Define a global variable to hold the token
    _G.auth_token = nil

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "json",
      callback = function(ev)
        vim.bo[ev.buf].formatprg = "jq"
      end,
    })

    vim.g.rest_nvim = {
      response = {

        hooks = {
          -- Function to handle the response and extract the token
          format = function(response)
            -- Extract the token from the 'Authorization' or a custom header
            _G.auth_token = response.headers["Authorization"] or response.headers["x-auth-token"]

            -- If the token has a 'Bearer' prefix, remove it
            if _G.auth_token and _G.auth_token:match("^Bearer ") then
              _G.auth_token = _G.auth_token:sub(8)
            end
          end,
        },
      },
    }
    vim.keymap.set("n", "<leader>ro", ":Rest open<CR>", { desc = "Rest open" })
    vim.keymap.set("n", "<leader>rr", ":Rest run<CR>", { desc = "Rest run" })
    vim.keymap.set("n", "<leader>rl", ":Rest logs<CR>", { desc = "Rest logs" })
    vim.keymap.set("n", "<leader>res", ":Rest env select<CR>", { desc = "Rest env select" })
  end,
}
