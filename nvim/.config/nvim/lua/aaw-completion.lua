-- aaw-completion.lua -- Configuration for LSP

require("mason").setup()

require("inc_rename").setup()
map("n", "<leader>rn", ":IncRename ")

local servers = {
    "pyright",
    "html",
    "cssls",
    "emmet_ls",
    "clangd",
    "ts_ls",
    "bashls",
    "rust_analyzer",
    "racket_langserver",
}

local capabilities = require('blink.cmp').get_lsp_capabilities()

for _, server in ipairs(servers) do
    require("lspconfig")[server].setup({
	capabilities = capabilities,
	on_attach = on_attach,
    })
end
