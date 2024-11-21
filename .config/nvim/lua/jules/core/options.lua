local opt = vim.opt

opt.guicursor = ""
opt.mouse = ""

opt.showmode = false
opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.termguicolors = true
opt.expandtab = true

opt.smartindent = true

opt.swapfile = false

opt.backspace = "indent,eol,start"

opt.wrap = false
opt.cursorline = false

opt.signcolumn = "yes" -- Show sign column so that text doesn't s

opt.inccommand = 'split'

opt.hlsearch = true
opt.incsearch = true

opt.termguicolors = true
opt.colorcolumn = "80"

opt.scrolloff = 6
opt.updatetime = 10

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*" },
    command = [[%s/\s\+$//e]]
})
