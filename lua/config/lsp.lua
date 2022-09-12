local M = {}

function M.setup()
  local lsp = require('lsp-zero')

  lsp.preset('recommended')
  lsp.nvim_workspace()
  lsp.setup()

  vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
end

return M
