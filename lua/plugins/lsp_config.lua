return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        cmd = "clangd",
        on_attach = function()
          require("clangd_extensions.inlay_hints").setup_autocmd()
          require("clangd_extensions.inlay_hints").set_inlay_hints()
        end,
      },
    },
  },
}
