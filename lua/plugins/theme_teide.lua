return {
  "serhez/teide.nvim",
  lazy = false, -- carga inmediatamente
  priority = 1000, -- alta prioridad para que se aplique temprano
  config = function()
    -- activa true colors
    vim.opt.termguicolors = true
    -- aplica el colorscheme
    vim.cmd.colorscheme("teide-darker")
  end,
}
