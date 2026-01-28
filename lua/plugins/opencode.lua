return {
  "akinsho/toggleterm.nvim",
  opts = function(_, opts)
    local Terminal = require("toggleterm.terminal").Terminal

    -- Terminal de proyecto (abajo)
    local project_term = Terminal:new({
      direction = "horizontal",
      hidden = true,
      close_on_exit = false,
    })

    vim.keymap.set("n", "<leader>ft", function()
      project_term:toggle()
    end, { desc = "Toggle project terminal" })

    -- OpenCode flotante
    local opencode = Terminal:new({
      cmd = "opencode",
      hidden = true,
      direction = "float",
      float_opts = {
        border = "rounded",
      },
    })

    vim.keymap.set("n", "<leader>o", function()
      opencode:toggle()
    end, { desc = "Toggle OpenCode" })
  end,
}
