return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    use_default_keymaps = false,
    watch_for_changes = true,
    delete_to_trash = true,
    keymaps = {
      ["g?"] = { "actions.show_help", mode = "n" },
      ["<CR>"] = "actions.select",
      ["<C-\\>"] = { "actions.select", opts = { vertical = true } },
      ["<C-->"] = { "actions.select", opts = { horizontal = true } },
      ["<C-t>"] = { "actions.select", opts = { tab = true } },
      ["<C-p>"] = "actions.preview",
      ["<S-q>"] = { "actions.close", mode = "n" },
      ["<S-l>"] = "actions.refresh",
      ["<BS>"] = { "actions.parent", mode = "n" },
      ["_"] = { "actions.open_cwd", mode = "n" },
      ["C-c"] = { "actions.cd", mode = "n" },
      ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
      ["<Leader>os"] = { "actions.change_sort", mode = "n" },
      ["<Leader>x"] = "actions.open_external",
      ["<Leader>H"] = { "actions.toggle_hidden", mode = "n" },
      ["<Leader>\\"] = { "actions.toggle_trash", mode = "n" },
    },
  },
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  keys = {
    { "-", "<cmd>Oil<cr>", desc = " Oil" },
  },
}
