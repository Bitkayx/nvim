return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      direction = "float",
      -- open_mapping = [[<leader>ft]], -- mapping handled in lua/config/keymaps.lua
      float_opts = {
        border = "rounded",
      },
    })

    local Terminal = require("toggleterm.terminal").Terminal
    local horiz_term = Terminal:new({
      direction = "horizontal",
      hidden = true,
      close_on_exit = false,
    })

    vim.keymap.set("n", "<leader>fT", function()
      horiz_term:toggle()
    end, { desc = "Toggle terminal (horizontal)" })
  end,
}
