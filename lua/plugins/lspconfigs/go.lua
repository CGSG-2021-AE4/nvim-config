local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").gopls.setup({
  cmd = { 'gopls', 'serve' },
  filetypes = { 'go', 'go.mod' },
  root_dir = require('lspconfig/util').root_pattern('go.work', 'go.mod', '.git'),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
    }
  },
  capabilities = lsp_capabilities,
})
