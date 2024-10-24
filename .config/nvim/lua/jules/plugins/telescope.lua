return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local keymap = vim.keymap
        keymap.set("n", "<leader>g", "<cmd>Telescope find_files<cr>")
        keymap.set("n", "<leader>r", "<cmd>Telescope live_grep<cr>")
        local telescope = require("telescope")
        telescope.setup({
            defaults = {
                path_display = { "truncate " },
            },
        })
    end,

    }
