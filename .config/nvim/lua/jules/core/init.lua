vim.g.mapleader = " "

vim.cmd('autocmd BufEnter * set formatoptions-=cro')
vim.cmd('autocmd BufEnter * setlocal formatoptions-=cro')

vim.g.zig_fmt_autosave = false

require("jules.core.options")
require("jules.core.remap")
