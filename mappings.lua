-- Custom mappings.
vim.keymap.set('n', 'b', ':Gitsigns blame_line<CR>')
vim.keymap.set('n', '<C-e>', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<C-g>', ':Files<CR>')
vim.keymap.set('n', '<C-f>', ':Rg<CR>')

-- Below mappings make search results appear in the middle of the screen.
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
vim.keymap.set('n', '*', '*zz')
vim.keymap.set('n', '#', '#zz')
vim.keymap.set('n', 'g*', 'g*zz')
vim.keymap.set('n', 'g#', 'g#zz')
