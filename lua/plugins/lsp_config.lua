return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        on_attach = function()
          require("clangd_extensions.inlay_hints").setup_autocmd()
          require("clangd_extensions.inlay_hints").set_inlay_hints()
        end,
      },
    },
    setup = {
      neocmake = function()
        require("neocmake").setup({

          default_config = {
            cmd = { "neocmakelsp", "--stdio" },
            filetypes = { "cmake" },
            root_dir = function(fname)
              return nvim_lsp.util.find_git_ancestor(fname)
            end,
            single_file_support = true, -- suggested
            on_attach = on_attach, -- on_attach is the on_attach function you defined
            init_options = {
              format = {
                enable = true,
              },
              lint = {
                enable = true,
              },
              scan_cmake_in_package = true, -- default is true
            },
          },
        })
      end,
    },
  },
}
