vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        mappings = {
            list = {
                { key = "<C-e>", action = "" } -- Rewrite edit_in_place action to allow toggling.
            },
        },
    },
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
