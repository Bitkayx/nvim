return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tsserver = {},
      eslint = {},
      pyright = {},
      sqls = {},
      tailwindcss = {
        filetypes = {
          "html",
          "css",
          "scss",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "astro",
        },
      },
    },
  },
}
