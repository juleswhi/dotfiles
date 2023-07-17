require'FTerm'.setup({
    border = 'single',
    dimemsions = {
        height = 1.5,
        width = 1.5
    },
})

vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
