return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
      ["<Esc>"] = { "cancel", "fallback" },
    },
    completion = {
      list = {
        selection = {
          preselect = false,
        },
      },
    },
    sources = {
      default = { "lsp", "snippets", "buffer", "path" },
    },
  },
}
