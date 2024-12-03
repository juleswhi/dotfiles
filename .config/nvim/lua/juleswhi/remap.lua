local km = vim.keymap

vim.g.mapleader = " "

km.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
km.set('n', '<leader>d', '<cmd>DBUI<CR>')

km.set("n", "<C-e>", "f{", { noremap = true })
km.set("i", "<C-e>", "<Esc>f{li", { noremap = true })

km.set("n", "<C-t>", "f(", { noremap = true })
km.set("i", "<C-t>", "<Esc>f(li", { noremap = true })

km.set("n", "<C-d>", "<C-d>zz")
km.set("n", "<C-u>", "<C-u>zz")
km.set("i", "<C-c>", "<Esc>")

km.set({ "n", "v" }, "<leader>y", [["+y]])
km.set("n", "<leader>p", [["+p]])
km.set("n", "<leader>P", [["+P]])
km.set("n", "<leader>Y", [["+Y]])

km.set("n", "<leader>b", ":Oil <Enter>")

km.set("v", "J", ":m '>+1<CR>gv=gv")
km.set("v", "K", ":m '<-2<CR>gv=gv")

km.set("n", "n", "nzzzv")
km.set("n", "N", "Nzzzv")

vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Right>', '<Nop>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('c', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('c', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('c', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('c', '<Right>', '<Nop>', { noremap = true, silent = true })



-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
