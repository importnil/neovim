vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

local function on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '<C-e>', api.tree.toggle, opts('Toggle File Tree'))
end

require("nvim-tree").setup({
    on_attach = on_attach,
    sort_by = "case_sensitive",
    renderer = {
        group_empty = true,
        highlight_git = true,
    },
    git = {
        enable = true,
        ignore = true,
        show_on_dirs = true,
        timeout = 400,
    },
})
