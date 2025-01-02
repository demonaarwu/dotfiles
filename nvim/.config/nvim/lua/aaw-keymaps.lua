-- aaw-keymaps.lua -- Configuration for mapping

vim.g.mapleader = " "

function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("i", "kj", "<Esc>")
map("n", "<leader>tt", ":ToggleTerm direction=float<CR>")
map("n", "<leader>oo", ":!g++ %<CR>")
map("n", "<leader>cp", ":!g++ %<CR>:vsplit<CR>:wincmd l<CR>:term ./a.out<CR>i")
map("n", "<leader>rc", ":vsplit<CR>:wincmd l<CR>:term ./a.out<CR>i")
map("n", "<leader>cf", ":!copy %<CR><CR>")
map("n", "<leader>gb", "<C-o>")
map("n", "<leader>ft", "conform.format()")
map("n", "<leader>ls", ":LiveServerStart<CR>")
