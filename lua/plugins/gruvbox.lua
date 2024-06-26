return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    local gruvbox = require("gruvbox")
    require("gruvbox").setup({
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = false,
      },
      strikethrough = false,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "hard", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {
        ["@comment"] = { fg = "#2ea542" },
        ["@function"] = { fg = gruvbox.palette.bright_purple },
        ["@function.method.call.go"] = { fg = gruvbox.palette.light1 },
        ["@variable.go"] = { fg = gruvbox.palette.bright_blue },
        ["@type.go"] = { fg = gruvbox.palette.light1 },
        ["@type.definition.go"] = { fg = gruvbox.palette.light1 },
        ["@function.call.go"] = { fg = gruvbox.palette.light1 },
      },
      dim_inactive = false,
      transparent_mode = false,
    })
  end,
  opts = ...,
}
