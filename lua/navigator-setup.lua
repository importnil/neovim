require('lsp_signature').setup {
    fix_pos = false,
    hint_enable = false,
    aways_trigger = true,
}

require('navigator').setup({
    debug = false,
    width = 0.75,
    height = 0.3,
    preview_height = 0.35,
    border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
    ts_fold = false,
    default_mapping = true,
    keymaps = {
        {
            key = 'gl',
            func = vim.diagnostic.open_float,
            desc = 'show diagnostics in a floating window',
        },
    },
    treesitter_analysis = true,
    treesitter_analysis_max_num = 100,
    treesitter_analysis_condense = true,
    transparency = 50,
    lsp_signature_help = true,
    icons = {
        code_action_icon = '🏏',
        diagnostic_head = '🐛',
        diagnostic_head_severity_1 = '🈲',
    },
    mason = true,
    lsp = {
        enable = true,
        disable_lsp = {
            'lua_ls',
            'golangci_lint_ls',
            'gopls',
            'rust_analyzer',
            'eslint',
            'vimls',
            'jsonls',
            'yamlls',
        },
        code_action = {
            enable = true,
            sign = true,
            sign_priority = 40,
            virtual_text = true
        },
        code_lens_action = {
            enable = true,
            sign = true,
            sign_priority = 40,
            virtual_text = true
        },
        document_highlight = true,
        format_on_save = true,
        format_options = { async = true },
        diagnostic = {
            underline = false,
            virtual_text = true,
            update_in_insert = true,
        },
    }
})
