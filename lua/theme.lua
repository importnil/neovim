-- Set background, colorscheme and his.
vim.opt.background = 'light'
vim.cmd [[
    colorscheme github
    hi! Keyword gui=bold,italic cterm=bold,italic
    hi! Comment gui=italic cterm=italic guifg=#808080
    hi! LspReferenceText guibg=#e4e4fe
    hi! LspReferenceRead guibg=#e4e4fe
    hi! LspReferenceWrite guibg=#e4e4fe
    hi! def IlluminatedWordText guibg=#e4e4fe
    hi! def IlluminatedWordRead guibg=#e4e4fe
    hi! def IlluminatedWordWrite guibg=#e4e4fe
    hi! Visual guibg=#5974ab guifg=#ffffff
    hi! MatchParen guibg=#99ccff
    hi! String guifg=#008005 gui=bold
    hi! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
    hi! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
    hi! link CmpItemAbbrMatchFuzzy CmpItemAbbrMatch
    hi! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
    hi! link CmpItemKindInterface CmpItemKindVariable
    hi! link CmpItemKindText CmpItemKindVariable
    hi! CmpItemKindFunction guibg=NONE guifg=#C586C0
    hi! link CmpItemKindMethod CmpItemKindFunction
    hi! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
    hi! link CmpItemKindProperty CmpItemKindKeyword
    hi! link CmpItemKindUnit CmpItemKindKeyword
]]

-- Setup theme with custom colorscheme based on tokyonight-moon.
require('feline_theme').setup {
    fg = "#c8d3f5",
    bg = "#2f334d",
    bg_dark = "#222436",
    green = "#c3e88d",
    yellow = "#ffc777",
    purple = "#fca7ea",
    orange = "#d19a66",
    fg_dark = "#a9b1d6",
    red = "#ff757f",
    blue = "#82aaff",
    dark_red = "#c53b53",
}
