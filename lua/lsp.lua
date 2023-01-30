-- LSP finalizers.
vim.cmd [[
    augroup lsp_finalizers
        autocmd!
        autocmd InsertLeave,BufWritePre *.go,*.rs,*.lua :lua org_imports(3000)
        autocmd InsertLeave,BufWritePre *.go,*.rs,*.lua :lua vim.lsp.buf.format()
    augroup END
]]

-- General LSP configuration.
defaults = {
    single_file_support = true,
    flags = {
        debounce_text_changes = 100,
    },
    capabilities = require('cmp_nvim_lsp').default_capabilities(
        vim.lsp.protocol.make_client_capabilities()
    ),
    on_attach = function(client, bufnr)
        require('navigator.lspclient.mapping').setup({ bufnr = bufnr, client = client })
    end
}

return defaults
