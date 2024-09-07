return {
  {
    -- TODO: not yep implemented.
    "akinsho/bufferline.nvim",
    opts = function(_, opts)
      table.insert(
        opts.options,
        { hover = {

          enabled = true,
          delay = 200,
          reveal = { "close" },
        } }
      )
    end,
  },
}
