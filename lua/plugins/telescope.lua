return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files hidden=true no_ignore=true<cr>", desc = "Find Files" },
  },
  opts = {
    defaults = {
      hidden = true,
      no_ignore = true,
    },
  },
}
