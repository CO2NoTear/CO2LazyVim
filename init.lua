-- bootstrap lazy.nvim, LazyVim and your plugins
vim.g.python3_host_prog = "~/.config/nvim/.venv/bin/python"
require("neovide")
require("user.abbr")
require("user.newjupyter")
require("config.lazy")
