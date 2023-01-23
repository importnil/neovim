local lsp = require('../lsp')

local config = {
    on_attach = lsp.on_attach,
    capabilities = lsp.capabilities,
    autostart = true,
    cmd = { vim.env.HOME .. '/.local/share/nvim/mason/bin/jdtls' },
    root_dir = vim.fs.dirname(vim.fs.find({ '.gradle', '.git', 'mvn' }, { upward = true })[1]),
}

require('jdtls').start_or_attach(config)
