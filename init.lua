local vimrc=vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)
require("jan")
require('lualine').setup()
