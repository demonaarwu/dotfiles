-- aaw-telescope.lua -- Configuration for telescope.nvim


local actions = require("telescope.actions") -- Ensure this is explicitly required

require("telescope").setup
{
    defaults = {
	mappings = {
	    i = {
		["<esc>"] = actions.close,
	    },
	},
    },
    extensions = {
	file_browser = {
	    hijack_netrw = true,
	    display_stat = false,
	    hidden = { file_browser = true, folder_browser = true },
	},
    },
}

require("telescope").load_extension "file_browser"

map("n", "<leader>sb", ":Telescope buffers<CR>")
map("n", "<leader>gg", ":Telescope live_grep<CR>")
map("n", "<leader>rr", ":Telescope oldfiles<CR>")
map("n", "<leader>ff", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
map("n", "<leader>fp", ":Telescope fd<CR>")
