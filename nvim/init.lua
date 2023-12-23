-- my configuration of neovim

-- base changes that I like
vim.opt.number = true -- display numbers
vim.opt.relativenumber = true -- display relative numbers
vim.opt.scrolloff = 999 -- centers the active highlited line
vim.opt.splitbelow = true -- make splits below instead of above
vim.opt.splitright = true -- make splits in the right instaed of the left
vim.opt.termguicolors = true -- activate terminal GUI colors (for better colors)
vim.opt.clipboard = "unnamedplus" -- allow copying and pasting from the system clipboard to neovim
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- intall lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- install plugins (using lazy)
require("lazy").setup({
	-- install TreeSitter (for syntax highlighting)
	"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
	-- install Gruvbox colorscheme
	"ellisonleao/gruvbox.nvim", priority = 1000 , config = true,
})

-- Default options for the Gruvbox colorscheme (i don't know what most of it does):
require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

-- change the colorscheme
vim.o.background = "dark" -- chosse a variation, light or dark
vim.cmd.colorscheme("gruvbox") -- declare the colorsheme you want to use
