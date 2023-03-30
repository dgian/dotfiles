vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("my.lazy")
require("my.config.opts")
require("my.config.remap")

vim.cmd.colorscheme "kanagawa"

vim.api.nvim_create_autocmd({"BufWinEnter"}, {pattern = {"*.md"}, command = "setlocal syntax=markdown"})
