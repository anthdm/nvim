return {
  {
    "nvimdev/dashboard-nvim",
    opts = function()
      local logo = [[

 █████╗ ███╗   ██╗████████╗██╗  ██╗ ██████╗  ██████╗ 
██╔══██╗████╗  ██║╚══██╔══╝██║  ██║██╔════╝ ██╔════╝ 
███████║██╔██╗ ██║   ██║   ███████║██║  ███╗██║  ███╗
██╔══██║██║╚██╗██║   ██║   ██╔══██║██║   ██║██║   ██║
██║  ██║██║ ╚████║   ██║   ██║  ██║╚██████╔╝╚██████╔╝
╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ 
            ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"

      local opts = {
        theme = "doom",
        hide = {
          -- this is taken care of by lualine
          -- enabling this messes up the actual laststatus setting after loading a file
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
          center = {
            {
              action = "",
              desc = " Get shit done on Levenue",
              icon = " ",
              key = "l",
            },
            {
              action = "",
              desc = " Work on SuperKit",
              icon = " ",
              key = "s",
            },
            {
              action = "",
              desc = " Spend hours on config",
              icon = " ",
              key = "c",
            },
            {
              action = "",
              desc = " Panic Button",
              icon = " ",
              key = "p",
            },
            {
              action = function()
                vim.api.nvim_input("<cmd>qa<cr>")
              end,
              desc = " Quit",
              icon = " ",
              key = "q",
            },
          },
        },
      }
      return opts
    end,
  },
}
