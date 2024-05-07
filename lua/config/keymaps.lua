-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set({ "n", "i" }, "<A-->", "<cmd>ToggleTerm<CR>")
vim.keymap.set({ "n", "i" }, "<F5>", '<cmd>TermExec cmd="python %"<CR>')
