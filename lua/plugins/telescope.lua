return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      hidden = true,
      no_ignore = true,
      no_ignore_parent = true,
    })

    opts.pickers = {
      find_files = {
        hidden = true,
        no_ignore = true,
        no_ignore_parent = true,
      },
    }
  end,
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files({
          hidden = true,
          no_ignore = true,
          no_ignore_parent = true,
        })
      end,
      desc = "Find Files (all)",
    },
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({
          cwd = require("lazy.core.config").options.root,
        })
      end,
      desc = "Find Plugin File",
    },
  },
}
