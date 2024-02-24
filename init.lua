-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("tokyonight").setup({
  transparent = true,
})

vim.cmd("colorscheme tokyonight-night")
