return {
  "stevearc/conform.nvim",
  opts = function()
    local opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        fish = { "fish_indent" },
        sh = { "shfmt" },
        go = { "goimports", "gofmt" },
        templ = { "templ" },
        html = { "prettier" },
        svelte = { "prettier" },
        eruby = { "erb_format" },
      },
    }
    return opts
  end,
}
