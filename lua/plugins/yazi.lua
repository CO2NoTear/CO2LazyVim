return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = {
    -- check the installation instructions at
    -- https://github.com/folke/snacks.nvim
    "folke/snacks.nvim",
  },
  keys = {
    -- 👇 in this section, choose your own keymappings!
    {
      "<leader>yz",
      "<cmd>Yazi<cr>",
      mode = { "n", "v" },
      desc = "Open yazi at the current file",
    },
    {
      -- Open in the current working directory
      "<leader>yw",
      "<cmd>Yazi cwd<cr>",
      desc = "Open the file manager in nvim's working directory",
    },
    {
      "<leader>yt",
      "<cmd>Yazi toggle<cr>",
      desc = "Resume the last yazi session",
    },
  },
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = false,
    keymaps = {
      show_help = "g?",
    },
    integrations = {
      --- What should be done when the user wants to grep in a directory
      grep_in_directory = function(directory)
        -- Snacks.picker.grep({ dirs = directory })
        require("fzf-lua").live_grep({ search_paths = { directory } })
      end,

      grep_in_selected_files = function(selected_files)
        -- similar to grep_in_directory, but for selected files
        require("fzf-lua").live_grep({ search = { selected_files } })
      end,
    },
  },
  -- 👇 if you use `open_for_directories=true`, this is recommended
  init = function()
    -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
    -- vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
}
