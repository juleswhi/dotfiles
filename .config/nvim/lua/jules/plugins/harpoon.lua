return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local keymap = vim.keymap
	keymap.set(
		"n",
		"<C-q>",
		"<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
	{ desc = "Toggle the quick menu" }
	)
	keymap.set(
		"n",
		"<leader>a",
		"<cmd>lua require('harpoon.mark').add_file()<cr>",
	{ desc = "Mark file with harpoon" }
	)

	-- Keymaps for quick navigation to the first 4 files
	keymap.set(
	"n",
	"<C-f><C-h>",
	"<cmd>lua require('harpoon.ui').nav_file(1)<cr>",
	{ desc = "Go to first" }
	)
	keymap.set(
	"n",
	"<C-f><C-j>",
	"<cmd>lua require('harpoon.ui').nav_file(2)<cr>",
	{ desc = "Go to second" }
	)
	keymap.set(
	"n",
	"<C-f><C-k>",
	"<cmd>lua require('harpoon.ui').nav_file(3)<cr>",
	{ desc = "Go to third" }
	)
	keymap.set(
	"n",
	"<C-f><C-l>",
	"<cmd>lua require('harpoon.ui').nav_file(4)<cr>",
	{ desc = "Go to fourth" }
	)
	end,
}
