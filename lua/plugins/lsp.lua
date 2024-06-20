-- Remove the annoying highlighting when the cursor is over a word
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      document_highlight = {
        enabled = false,
      },
    },
  },
}
