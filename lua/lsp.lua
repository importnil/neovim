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
