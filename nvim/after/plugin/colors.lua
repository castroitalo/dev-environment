-- Set gruvbox theme 
vim.o.background = "dark" 
require("gruvbox").setup({
  bold = true,
  italic = {
    strings = false,
    comments = true,
    operators = false,
    folds = true,
  },
})
vim.cmd([[colorscheme gruvbox]])
