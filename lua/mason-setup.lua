-- Mason related setup.
require('mason').setup({
    ui = {
        icons = {
            package_installed = '✓',
            package_pending = '➜',
            package_uninstalled = '✗'
        }
    },
})

require('mason-tool-installer').setup {
    ensure_installed = {
        { 'golangci-lint', version = 'v1.47.3' },
    },
    auto_update = true,
    run_on_start = true,
}

require('mason-lspconfig').setup({
    automatic_installation = true,
    ensure_installed = {
        'sumneko_lua',
        'golangci_lint_ls',
        'gopls',
        'rust_analyzer',
        'eslint',
        'vimls',
        'json-lsp',
        'yaml-language-server',
    },
})

-- General LSP configuration.
local lsp_defaults = {
    single_file_support = true,
    flags = {
        debounce_text_changes = 100,
    },
    capabilities = require('cmp_nvim_lsp').update_capabilities(
        vim.lsp.protocol.make_client_capabilities()
    ),
    on_attach = function(client, bufnr)
        require('navigator.lspclient.mapping').setup({ bufnr = bufnr, client = client })
    end
}

local lspconfig = require('lspconfig')

lspconfig.util.default_config = vim.tbl_deep_extend(
    'force',
    lspconfig.util.default_config,
    lsp_defaults
)

-- Server setup handlers.
require('mason-lspconfig').setup_handlers({
    ['sumneko_lua'] = function()
        lspconfig.sumneko_lua.setup {}
    end,
    ['golangci_lint_ls'] = function()
        lspconfig.golangci_lint_ls.setup {}
    end,
    ['gopls'] = function()
        require('lspconfig').gopls.setup {
            cmd = { 'gopls' },
            settings = {
                gopls = {
                    analyses = {
                        staticcheck = true,
                        fieldalignment = true,
                        nilness = true,
                        shadow = true,
                        unusedparams = true,
                        unreachable = true,
                        unusedwrite = true,
                        useany = true,
                        unusedvariable = true,
                    },
                    codelenses = {
                        generate = true,
                        regenerate_cgo = true,
                        gc_details = true,
                        test = true,
                        tidy = true,
                        upgrade_dependency = true,
                        vendor = true,
                    },
                    allExperiments = true,
                    usePlaceholders = false,
                    completeUnimported = true,
                    matcher = 'fuzzy',
                    diagnosticsDelay = '500ms',
                    experimentalWatchedFileDelay = '100ms',
                    symbolMatcher = 'fuzzy',
                    buildFlags = { '-tags', 'integration' },
                    gofumpt = true,
                    experimentalPostfixCompletions = true,
                    staticcheck = true,
                },
            },
        }
    end,
    ['rust_analyzer'] = function()
        lspconfig.rust_analyzer.setup {}
    end,
    ['eslint'] = function()
        lspconfig.eslint.setup {}
    end,
    ['vimls'] = function()
        lspconfig.vimls.setup {}
    end,
    ['jsonls'] = function()
        lspconfig.jsonls.setup {
            settings = {
                json = {
                    schemas = {
                        {
                            description = 'NPM package config',
                            fileMatch = { 'package.json' },
                            url = 'https://json.schemastore.org/package.json',
                        },
                        {
                            description = 'TypeScript compiler configuration file',
                            fileMatch = { 'tsconfig.json', 'tsconfig.*.json' },
                            url = 'http://json.schemastore.org/tsconfig'
                        },
                        {
                            description = 'Lerna config',
                            fileMatch = { 'lerna.json' },
                            url = 'http://json.schemastore.org/lerna'
                        },
                        {
                            description = 'Babel configuration',
                            fileMatch = { '.babelrc.json', '.babelrc', 'babel.config.json' },
                            url = 'http://json.schemastore.org/lerna'
                        },
                        {
                            description = 'ESLint config',
                            fileMatch = { '.eslintrc.json', '.eslintrc' },
                            url = 'http://json.schemastore.org/eslintrc'
                        },
                        {
                            description = 'Bucklescript config',
                            fileMatch = { 'bsconfig.json' },
                            url = 'https://bucklescript.github.io/bucklescript/docson/build-schema.json'
                        },
                        {
                            description = 'Prettier config',
                            fileMatch = { '.prettierrc', '.prettierrc.json', 'prettier.config.json' },
                            url = 'http://json.schemastore.org/prettierrc'
                        },
                        {
                            description = 'Vercel Now config',
                            fileMatch = { 'now.json' },
                            url = 'http://json.schemastore.org/now'
                        },
                        {
                            description = 'Stylelint config',
                            fileMatch = { '.stylelintrc', '.stylelintrc.json', 'stylelint.config.json' },
                            url = 'http://json.schemastore.org/stylelintrc'
                        },
                    }
                },
            }
        }
    end,
    ['yamlls'] = function()
        lspconfig.yamlls.setup {
            settings = {
                yaml = {
                    schemas = {
                        ['http://json.schemastore.org/github-workflow'] = '.github/workflows/*.{yml,yaml}',
                        ['http://json.schemastore.org/github-action'] = '.github/action.{yml,yaml}',
                        ['http://json.schemastore.org/ansible-stable-2.9'] = 'roles/tasks/*.{yml,yaml}',
                        ['http://json.schemastore.org/prettierrc'] = '.prettierrc.{yml,yaml}',
                        ['http://json.schemastore.org/stylelintrc'] = '.stylelintrc.{yml,yaml}',
                        ['http://json.schemastore.org/circleciconfig'] = '.circleci/**/*.{yml,yaml}'
                    }
                }
            }
        }
    end,
})
