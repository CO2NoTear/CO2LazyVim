-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--

-- terminal settings hooks

-- vim.api.nvim_create_autocmd({ "termOpen", "WinEnter" }, {
--   callback = function()
--     if vim.opt.buftype:get() == "terminal" then
--       vim.cmd("se nonu")
--       vim.cmd("se norelativenumber")
--       vim.cmd("startinsert")
--     end
--   end,
-- })
