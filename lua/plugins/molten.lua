if vim.g.neovide then
  return {
    "benlubas/molten-nvim",
    enabled = false,
  }, {
    "3rd/image.nvim",
    enabled = false,
  }
else
  return {
    {
      "benlubas/molten-nvim",
      enabled = true,
      version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
      build = ":UpdateRemotePlugins",
      dependencies = {
        "3rd/image.nvim",
      },
      init = function()
        -- this is an example, not a default. Please see the readme for more configuration options
        vim.g.molten_output_win_max_height = 20
        vim.g.molten_image_provider = "image.nvim"

        -- don't change the mappings (unless it's related to your bug)
        vim.keymap.set("n", "<localleader>mi", ":MoltenInit<CR>")
        vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>")
        vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>")
        vim.keymap.set("v", "<localleader>r", ":<C-u>MoltenEvaluateVisual<CR>gv")
        vim.keymap.set("n", "<localleader>os", ":noautocmd MoltenEnterOutput<CR>")
        vim.keymap.set("n", "<localleader>oh", ":MoltenHideOutput<CR>")
        vim.keymap.set("n", "<localleader>md", ":MoltenDelete<CR>")
      end,
    },
    {
      "3rd/image.nvim",
      enabled = true,
      build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
      opts = {
        backend = "kitty", -- or "ueberzug" or "sixel"
        processor = "magick_cli", -- or "magick_rock"
        integrations = {
          markdown = {
            enabled = true,
            clear_in_insert_mode = false,
            download_remote_images = true,
            only_render_image_at_cursor = false,
            only_render_image_at_cursor_mode = "popup", -- or "inline"
            floating_windows = false, -- if true, images will be rendered in floating markdown windows
            filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
          },
          neorg = {
            enabled = true,
            filetypes = { "norg" },
          },
          typst = {
            enabled = true,
            filetypes = { "typst" },
          },
          html = {
            enabled = false,
          },
          css = {
            enabled = false,
          },
        },
        max_width = 100,
        max_height = 12,
        max_width_window_percentage = math.huge,
        max_height_window_percentage = math.huge,
        scale_factor = 1.0,
        window_overlap_clear_enabled = true, -- toggles images when windows are overlapped
        window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "snacks_notif", "scrollview", "scrollview_sign" },
        editor_only_render_when_focused = false, -- auto show/hide images when the editor gains/looses focus
        tmux_show_only_in_active_window = false, -- auto show/hide images in the correct Tmux window (needs visual-activity off)
        hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" }, -- render image files as images when opened
      },
    },
  }
end
