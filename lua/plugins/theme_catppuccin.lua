return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Ensures it loads before other plugins
    enabled = false,
    opts = {
      flavour = "macchiato", -- or "macchiato", "latte", "frappe" "mocha"
      transparent_background = false,
      integrations = {
        treesitter = true,
        nativelsp = {
          enabled = true,
        },
        telescope = true,
        which_key = true,
        gitsigns = true,
      },
    },
  },
}
