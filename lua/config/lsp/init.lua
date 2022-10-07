local M = {}

function M.setup()
    local lsp = require('lspconfig')

    require("mason").setup()
    local mason_lsp = require("mason-lspconfig")

    mason_lsp.setup()

    local on_attach = function(client, bufnr)
        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

        vim.api.nvim_buf_set_option(0, "formatexpr", "v:lua.vim.lsp.formater()")
    end

    mason_lsp.setup_handlers({
        function (server_name)
            lsp[server_name].setup({
                on_attach = on_attach,
                capabilities = mason_lsp.capabilities,
                flags = mason_lsp.flags,
            })
        end
    })


    local saga = require 'lspsaga'
    saga.init_lsp_saga()

end

return M
