-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("tokyonight").setup({
  style = "night",
  transparent = true,
})

vim.cmd("colorscheme tokyonight-night")
