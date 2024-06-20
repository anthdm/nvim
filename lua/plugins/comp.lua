return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- Merge the default options with your custom options
      opts = vim.tbl_deep_extend("force", opts or {}, {
        experimental = {
          ghost_text = false,
        },
      })
      return opts
    end,
  },
}
