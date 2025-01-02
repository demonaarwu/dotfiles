-- aaw-telescope.lua -- Configuration for telescope.nvim

require("telescope").setup
{
   pickers = {
       live_grep = {
	   theme = "ivy",
	   previewer = false,
	   layout_config = {
	       height = 0.25,
	   }
       },
      find_files = {
	  theme = "ivy",
	  previewer = false,
	  layout_config = {
	      height = 0.25,
	  },
	  hidden = true,
      },
      fd = {
	  theme = "ivy",
	  previewer = false,
	  layout_config = {
	      height = 0.25,
	  }
      },
   },
    extensions = {
	file_browser = {
	    theme = "ivy",
	    hijack_netrw = true,
	    previewer = false,
	    display_stat = false,
	    hidden = { file_browser = true, folder_browser = true },
	    layout_config = {
		height = 0.25,  -- Set the height to 50% of the screen
	    },
	},
    },
}

require("telescope").load_extension "file_browser"

map("n", "<M-x>", ":Telescope commands<CR>")
map("n", "<leader>sb", ":Telescope buffers<CR>")

map("n", "<leader>gg", ":Telescope live_grep<CR>")
map("n", "<leader>rr", ":Telescope oldfiles<CR>")
map("n", "<leader>ff", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
map("n", "<leader>fp", ":Telescope fd<CR>")

