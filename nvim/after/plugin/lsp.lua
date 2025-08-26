local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })

    vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = bufnr,
        callback = function()
            vim.lsp.buf.format({ async = false })
        end,
    })
end)

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls', 'pyright', 'rust_analyzer' },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({
                capabilities = capabilities,
            })
        end,
    },
})
