return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
    },
    config = function()
        local cmp = require("cmp")

        local luasnip = require("luasnip")

--        local lspkind = require("lspkind")

        -- Loads vscode style snippets from installed plugins (e.g. friendly-snippets)
        require("luasnip.loaders.from_vscode").lazy_load()

        local cmp_select = { behavior = cmp.SelectBehavior.Insert }
        cmp.setup({
            completion = {
                completeopt = "menu,menuone,preview,noselect",
            },
            snippet = { -- Configure how nvim-cmp interacts with snippet engine
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                -- ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                -- ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.confirm({ select = false }),
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-y>'] = cmp.mapping.confirm({ select = true })
            }),
            -- Sources for autocompletion
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" }, -- Snippets
                { name = "buffer" }, -- Text within current buffer
                { name = "path" }, -- File system paths
            }),
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
        })
    end,
}
