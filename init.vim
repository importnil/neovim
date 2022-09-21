" Entrypoint for all plugins and configurations.
so ~/.config/nvim/core.vim
so ~/.config/nvim/plug.vim
so ~/.config/nvim/plug-cfg.vim
so ~/.config/nvim/lsp.vim
so ~/.config/nvim/mappings.vim
so ~/.config/nvim/theme.vim

autocmd VimEnter *
    \     if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \|        PlugInstall --sync | q | rewind
    \|    endif
