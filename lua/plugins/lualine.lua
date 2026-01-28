return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        section_separators = "",
        component_separators = "",
        globalstatus = true,
        theme = "auto",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {},
        lualine_c = {
          { "filename", path = 1 },
        },
        lualine_x = {
          "branch",
          "diff",
        },
        lualine_y = { "filetype" },
        lualine_z = { "location" },
      },
    })
  end,
}
