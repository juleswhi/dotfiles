return {
    "slugbyte/whip.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        local whip = require("whip")
        whip.setup({
            -- its probs a good idea to have a dir dedicated to your scratchpads
            dir = "/home/jw/.whip-scratchpads"
        })
        vim.keymap.set("", "<leader>wo", whip.open, { desc = "[W]hip [O]pen" })
        vim.keymap.set("", "<leader>wm", whip.make, { desc = "[W]hip [M]ake" })
        vim.keymap.set("", "<leader>wd", whip.drop, { desc = "[W]hip [D]rop" })
        vim.keymap.set("", "<leader>wf", whip.find_file, { desc = "[W]hip [F]ile Search" })
        vim.keymap.set("", "<leader>wg", whip.find_grep, { desc = "[W]hip [G]rep Search" })
    end,
}
