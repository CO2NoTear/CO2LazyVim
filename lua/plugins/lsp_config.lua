return {
  "neovim/nvim-lspconfig",
  opts = {
    setup = {
      clangd = function(_, opts)
        opts.cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--function-arg-placeholders",
          "--fallback-style=llvm",
        }
        opts.init_options = {
          usePlaceholders = true,
          completeUnimported = true,
          clangdFileStatus = true,
          fallbackFlags = { "-std=c++20" },
        }
      end,
    },
  },
}
