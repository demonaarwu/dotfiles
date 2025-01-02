-- aaw-theme.lua -- Configuration for theme

vim.o.background = "light"
vim.cmd("colorscheme doom-one")

require("lualine").setup {
    options = {
	theme = 'onelight',
    }
}
