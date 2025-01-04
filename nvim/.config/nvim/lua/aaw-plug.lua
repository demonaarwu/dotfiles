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
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
	"windwp/nvim-autopairs",
	"pocco81/auto-save.nvim",
	"terrortylor/nvim-comment",
	"nvim-lualine/lualine.nvim",
	"nvim-tree/nvim-web-devicons",
	"neovim/nvim-lspconfig",
	"NTBBloodbath/doom-one.nvim",
	"windwp/nvim-ts-autotag",
	"nvim-telescope/telescope-file-browser.nvim",
	"hrsh7th/vim-vsnip",
	"smjonas/inc-rename.nvim",
	"nvim-treesitter/nvim-treesitter",
	"stevearc/conform.nvim",
	"akinsho/toggleterm.nvim",
	"williamboman/mason.nvim",
	'barrett-ruth/live-server.nvim',
	"NvChad/nvim-colorizer.lua",
{
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = 'rafamadriz/friendly-snippets',
  version = '*',
  opts = {
    keymap = { 
	preset = "enter",
	-- disable a keymap from the preset
	['<Tab>'] = {},
	['<S-Tab>'] = {},
	['<Tab>'] = { 'select_next', 'fallback' },
	['<S-Tab>'] = { 'select_prev', 'fallback' },
	cmdline = {
	    ['<CR>'] = {},
	}
    },
    appearance = {
      use_nvim_cmp_as_default = false,
      -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono'
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    completion = { 
	menu = { auto_show = function(ctx) return ctx.mode ~= 'cmdline' end },
    },
  },
  opts_extend = { "sources.default" }
},
}

require("lazy").setup(plugins_list)
require("toggleterm").setup()
require("live-server").setup()
