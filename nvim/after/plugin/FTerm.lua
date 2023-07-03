require'FTerm'.setup({
    border = 'none',
    dimemsions = {
        height = 1,
        width = 1
    },
})

vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
