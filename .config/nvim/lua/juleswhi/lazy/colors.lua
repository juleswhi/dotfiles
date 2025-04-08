return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme gruvbox]])
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                styles = {
                    italic = false,
                },
            })

            -- vim.cmd([[colorscheme rose-pine-moon]])
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
    },
    { "catppuccin/nvim",       name = "catppuccin", priority = 1000 },
    { "rebelot/kanagawa.nvim", name = "kanagawa",   priority = 1000 },
    { "Mofiqul/vscode.nvim",   name = "vscode",         priority = 1000 },
    {
        'ribru17/bamboo.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('bamboo').setup {
                -- optional configuration here
            }
            require('bamboo').load()
        end,
    },

}
