vim.api.nvim_create_autocmd({
    command = [[if len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) |  PlugInstall --sync | q |endif]]
}, 'VimEnter')

-- Entrypoint for all plugins and configurations.
require('core')
require('plug')
require('plug-load')
require('lsp')
require('mappings')
require('theme')
