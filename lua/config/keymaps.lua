-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- bindings
local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }

-- select all
keymap("n", "<leader>sA", "ggVG<CR>", { desc = "[S]elect [A]ll" })

-- replace all
keymap("n", "<leader>rA", ":%s/", { desc = "[R]eplace [A]ll" })

-- toggle relative numbering
keymap(
  "n",
  "<leader>tn",
  ":if &relativenumber | set norelativenumber | else | set relativenumber | endif<CR>",
  { desc = "[T]oggle [N]umbering" }
)

-- colorscheme
keymap("n", "<leader>cn", ":colorscheme carbonfox<CR>", { desc = "[C]olorscheme [N]ight" })
keymap("n", "<leader>cd", ":colorscheme dayfox<CR>", { desc = "[C]olorscheme [D]ay" })

-- exit insert and terminal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)
