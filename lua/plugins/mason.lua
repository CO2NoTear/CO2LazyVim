return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- "clangd",
      -- "pyright",
      "black",
      "rust-analyzer",
    },
    github = {
      -- The template URL to use when downloading assets from GitHub.
      -- The placeholders are the following (in order):
      -- 1. The repository (e.g. "rust-lang/rust-analyzer")
      -- 2. The release version (e.g. "v0.3.0")
      -- 3. The asset name (e.g. "rust-analyzer-v0.3.0-x86_64-unknown-linux-gnu.tar.gz")
      --NOTE: default is this:
      download_url_template = "https://hub.gitmirror.com/https://github.com/%s/releases/download/%s/%s",
      -- download_url_template = "https://mirror.ghproxy.com/https://github.com/%s/releases/download/%s/%s",
    },
    { "mason-org/mason.nvim", version = "^1.0.0" },
    { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
  },
}
