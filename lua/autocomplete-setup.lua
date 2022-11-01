local status, cmp = pcall(require, 'cmp')
if (not status) then return end
local lspkind = require 'lspkind'
local luasnip = require('luasnip')

require('nvim-autopairs').setup({
    enable_check_bracket_line = false,
    ignored_next_char = "[%w%.]",
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on(
    'confirm_done',
    cmp_autopairs.on_confirm_done()
)

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-PageUp>'] = cmp.mapping.select_prev_item(),
        ['<C-PageDown>'] = cmp.mapping.select_next_item(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<Tab>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        }),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true
        }),
        ['<Esc>'] = cmp.mapping.close(),
    }),
    sources = cmp.config.sources({
        { name = 'path' },
        { name = 'nvim_lsp', keyword_length = 1 },
        { name = 'nvim_lsp_signature_help', keyword_length = 1 },
        { name = 'buffer', keyword_length = 1 },
        { name = 'luasnip', keyword_length = 1 },
    }),
    formatting = {
        format = lspkind.cmp_format({
            mode = 'symbol_text',
            with_text = true,
            maxwidth = 50,
            menu = ({
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                luasnip = "[LuaSnip]",
                nvim_lua = "[Lua]",
                latex_symbols = "[Latex]",
            })
        })
    }
})

vim.opt.completeopt = 'menuone,noinsert,noselect'
