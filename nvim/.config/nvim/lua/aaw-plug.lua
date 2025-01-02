-- aaw-plug.lua - install plugins

function install_lazy()
	local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
	if not vim.loop.fs_stat(lazypath) then
		vim.fn.system({
			"git",
			"clone",
			"--filter=blob:none",
			"https://github.com/folke/lazy.nvim.git",
			"--branch=stable", -- latest stable release
			lazypath,
		})
	end
	vim.opt.rtp:prepend(lazypath)
end

install_lazy()

-- plugins list
local plugins_list = {
	"nvim-telescope/telescope.nvim",
	"nvim-lua/plenary.nvim",
	"windwp/nvim-autopairs",
	"pocco81/auto-save.nvim",
	"terrortylor/nvim-comment",
	"nvim-lualine/lualine.nvim",
	"nvim-tree/nvim-web-devicons",
	"xiyaowong/transparent.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/nvim-cmp",
	"NTBBloodbath/doom-one.nvim",
	"hrsh7th/cmp-buffer",
	"windwp/nvim-ts-autotag",
	"nvim-telescope/telescope-file-browser.nvim",
	"hrsh7th/cmp-path",
	"hrsh7th/vim-vsnip",
	"smjonas/inc-rename.nvim",
	"nvim-treesitter/nvim-treesitter",
	"stevearc/conform.nvim",
	"akinsho/toggleterm.nvim",
	"williamboman/mason.nvim",
	'barrett-ruth/live-server.nvim',
	"NvChad/nvim-colorizer.lua",
}

require("lazy").setup(plugins_list)
require("toggleterm").setup()
require("live-server").setup()
