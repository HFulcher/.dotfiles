local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup()

lsp.on_attach(function(client, bufnr)
  local map = function(mode, lhs, rhs)
    local opts = {remap = false, buffer = bufnr}
    vim.keymap.set(mode, lhs, rhs, opts)
  end

  map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
  map('n', '<leader>cr', '<cmd>lua vim.lsp.buf.rename()<cr>')
  map('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>')
  map('x', '<leader>ca', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')
end)
