-- Custom mappings.
vim.keymap.set('n', 'b', ':Gitsigns blame_line<CR>')
vim.keymap.set('n', '<C-e>', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<C-g>', ':Files<CR>')
vim.keymap.set('n', '<C-f>', ':Rg<CR>')
vim.keymap.set('n', '<C-s>', ':SymbolsOutline<CR>')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')

-- Below mappings make search results appear in the middle of the screen.
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
vim.keymap.set('n', '*', '*zz')
vim.keymap.set('n', '#', '#zz')
vim.keymap.set('n', 'g*', 'g*zz')
