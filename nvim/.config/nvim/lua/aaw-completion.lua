local cmp = require('cmp')

cmp.setup({
    mapping = cmp.mapping.preset.insert({
	["<C-b>"] = cmp.mapping.scroll_docs(-4),
	["<C-f>"] = cmp.mapping.scroll_docs(4),
	["<C-Space>"] = cmp.mapping.complete(),
	["<C-e>"] = cmp.mapping.abort(),
	["<S-Tab>"] = cmp.mapping.select_prev_item(),
	["<Tab>"] = cmp.mapping.select_next_item(),
	["<CR>"] = cmp.mapping.confirm({ select = true ,    
	behavior = cmp.ConfirmBehavior.Replace,}), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
	{ name = "nvim_lsp" },
	{ name = "path" },
    })
})

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
    "svelte",
}

local capabilities = require("cmp_nvim_lsp").default_capabilities()

for _, server in ipairs(servers) do
    require("lspconfig")[server].setup({
	capabilities = capabilities,
	on_attach = on_attach,
    })
end
