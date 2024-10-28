return {
    "tamton-aquib/staline.nvim",
    config = function()
        require "staline".setup {
            sections = {
                left = { '  ', 'branch', ' ', 'cwd' },
                mid = {},
                right = { 'file_name', 'line_column' }
            },
            mode_colors = {
                i = "#9C8AA5",
                n = "#9C8AA5",
                c = "#9C8AA5",
                v = "#9C8AA5",
                r = "#9C8AA5",
            },
            defaults = {
                true_colors = true,
                line_column = " [%l/%L] :%c  ",
                branch_symbol = " "
            }
        }
        -- cool line
        -- require "staline".setup {
        --     sections = {
        --         left = { ("▁"):rep(vim.o.columns) }, -- change thickness: "_", "▁", "▂", "▃", "▄", "▅", "▆", "▇", "█"
        --         mid = {},
        --         right = {}
        --     },
        -- }
    end
}
