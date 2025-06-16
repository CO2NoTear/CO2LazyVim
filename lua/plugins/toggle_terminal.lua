return {
  "akinsho/toggleterm.nvim",
  opts = {
    open_mapping = [[<C-\>]],
    direction = "float",
    float_opts = {
      -- The border key is *almost* the same as 'nvim_open_win'
      -- see :h nvim_open_win for details on borders however
      -- the 'curved' border is a custom border type
      -- not natively supported but implemented in this plugin.
      border = "curved",
      -- like `size`, width, height, row, and col can be a number or function which is passed the current terminal
      -- width = 20,
      -- height = 20,
      -- row = 30,
      -- col = 24,
      winblend = 3,
      -- zindex = <value>,
      title_pos = "center",
    },
  },
}
