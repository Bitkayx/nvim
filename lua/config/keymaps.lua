-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- ToggleTerm flotante
map({ "n", "t" }, "<leader>ft", function()
  require("toggleterm").toggle(1)
end, { desc = "Toggle terminal (float)" })

-- Salir de la terminal con Esc
map("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

-- Redimensionar splits
map("n", "<A-Left>", ":vertical resize -1<CR>")
map("n", "<A-Right>", ":vertical resize +1<CR>")
map("n", "<A-Up>", ":resize +1<CR>")
map("n", "<A-Down>", ":resize -1<CR>")

-- Toggle last buffer
vim.keymap.set("n", ";;", "<C-^>", { desc = "Toggle last buffer" })

-- Abrir Bento
vim.keymap.set("n", "<leader>bt", "<cmd>BentoToggle<CR>", {
  desc = "Toggle Bento",
})

-- Moverse a mitad de pantalla
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
