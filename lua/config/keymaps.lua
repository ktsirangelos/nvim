-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }

-- select all
keymap("n", "<leader>sA", "ggVG<CR>", { desc = "[S]elect [A]ll" })

-- replace all
keymap("n", "<leader>rA", ":%s/", { desc = "[R]eplace [A]ll" })

-- exit insert and terminal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)

-- move 1/2 page up/down and center the cursonr on the screen
keymap("n", "<C-d>", "<C-d>zz", default_opts)
keymap("n", "<C-u>", "<C-u>zz", default_opts)

-- toggle numbering mode
keymap(
  "n",
  "<leader>tn",
  ":if &relativenumber | set norelativenumber | else | set relativenumber | endif<CR>",
  { desc = "[T]oggle [N]umbering" }
)
