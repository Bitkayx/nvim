return {
  -- Descomenta SOLO un tema a la vez:

  -- Teide (oscuro)
  -- {
  --   "serhez/teide.nvim",
  --   lazy = false, -- carga inmediatamente
  --   priority = 1000, -- alta prioridad para que se aplique temprano
  --   config = function()
  --     -- activa true colors
  --     vim.opt.termguicolors = true
  --     -- aplica el colorscheme
  --     vim.cmd.colorscheme("teide-darker")
  --   end,
  -- },

  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    config = function()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme("catppuccin")
    end,
    opts = {
      flavor = "mocha", -- latte, frappe, macchiato, mocha
    },
  },

  -- Tokyo Night
  -- { "folke/tokyonight.nvim", lazy = true },

  -- Gruvbox
  -- { "ellisonleao/gruvbox.nvim", lazy = true },

  -- Kanagawa
  -- { "rebelot/kanagawa.nvim", lazy = true },

  -- Nord
  -- { "arcticicestudio/nord-vim", lazy = true },
}
