local map = vim.keymap

map.set("i", "jj", "<Esc>")

local telescope = require("telescope.builtin")
map.set("n", "<leader>p", telescope.find_files, { desc = "Search Files" })
map.set("n", "<M-p>", telescope.find_files, { desc = "Search Files" })
map.set("n", "<leader>f", telescope.live_grep, { desc = "Grep Files" })

map.set("n", "<M-{>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
map.set("n", "<M-}>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })

-- Toggle the file tree
local toggle_tree = function()
  require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
end
map.set("n", "<M-b>", toggle_tree)

map.set("n", "<M-w>", "<cmd>bd<cr>", { remap = true })

-- Toggle Term
map.set("n", "<M-j>", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle Terminal" })

-- Split screen
map.set("n", "<leader>v", ":vsplit<CR><C-w>l")
map.set("n", "<leader>h", ":wincmd h<CR>")
map.set("n", "<leader>l", ":wincmd l<CR>")
