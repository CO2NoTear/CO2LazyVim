-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- ToggleTerm Normal mode
local map = LazyVim.safe_keymap_set
local esc_timer
map({ "t" }, "<esc>", function()
  esc_timer = esc_timer or (vim.uv or vim.loop).new_timer()
  if esc_timer:is_active() then
    esc_timer:stop()
    vim.cmd("stopinsert")
  else
    esc_timer:start(200, 0, function() end)
    return "<esc>"
  end
end)
