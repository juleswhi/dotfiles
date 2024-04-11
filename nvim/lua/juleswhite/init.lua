require('juleswhite.saveshare')
require('juleswhite.autocommands')
require('juleswhite.wallpaper')
require('juleswhite.commands')

-- REMAPS --

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>b", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("i", "<C-c>", "<Esc>")

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

vim.opt.mouse = ""

-- CONFIG --

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.cursorline = false

vim.opt.inccommand = 'split'

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.colorcolumn = "80"

vim.opt.scrolloff = 6
vim.opt.updatetime = 50

vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- PLUGINS --

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { "ellisonleao/gruvbox.nvim" }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use "nvim-lua/plenary.nvim"

    use "xiyaowong/transparent.nvim"

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }
end)
