local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").html.setup({
  capabilities = lsp_capabilities,
})
