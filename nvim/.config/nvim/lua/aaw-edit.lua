-- aaw-edit.lua - configs for better edit

-- require("conform").setup({
-- 	formatters_by_ft = {
-- 		lua = { "stylua" },
-- 		cpp = { "astyle" },
-- 	},
-- })
--
--
require("auto-save").setup({
	enable = true,
	trigger_events = { "InsertLeave", "TextChanged" },
})

require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
})

require("nvim-autopairs").setup()

require("nvim_comment").setup()
map("n", "<leader>gc", ":CommentToggle<CR>")

require("colorizer").setup({
    filetypes = {'*'},
    user_default_options = {
	css = true,
	css_fn = true,
	rgb_fn = true,
    }
})
require("nvim-ts-autotag").setup()

-- aaw-edit.lua ends here
