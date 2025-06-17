return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    servers = {
      neocmake = {
        enabled = false,
      },
      clangd = {
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--function-arg-placeholders",
          "--fallback-style=llvm",
        },
        init_options = {
          usePlaceholders = true,
          completeUnimported = true,
          clangdFileStatus = true,
          fallbackFlags = { "-std=c++20" },
        },
        filetypes = { "c", "cpp", "objc", "objcpp", "cuda" }, -- Exclude "proto".
      },
    },
  },
}
