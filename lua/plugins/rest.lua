return {
  "rest-nvim/rest.nvim",
  config = function()
    -- Define a global variable to hold the token
    _G.auth_token = nil

    -- Setup rest.nvim
    require("rest-nvim").setup({
      result = {
        -- Function to handle the response and extract the token
        format = function(response)
          -- Extract the token from the 'Authorization' or a custom header
          _G.auth_token = response.headers["Authorization"] or response.headers["x-auth-token"]

          -- If the token has a 'Bearer' prefix, remove it
          if _G.auth_token and _G.auth_token:match("^Bearer ") then
            _G.auth_token = _G.auth_token:sub(8)
          end

          -- Optionally print the token for debugging
          print("Captured Token:", _G.auth_token)
        end,
      },
    })
  end,
}
