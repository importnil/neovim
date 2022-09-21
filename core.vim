" Encoding.
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Fix backspace indent.
set backspace=indent,eol,start

" Tabs.
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

" Map leader to ,
let mapleader=','

" Enable hidden buffers.
set hidden

" Search functionality.
set hlsearch
set incsearch
set ignorecase
set smartcase

" Misc.
set fileformats=unix,dos,mac
set clipboard=unnamedplus
set nocompatible
set nowrap
set nobackup
set nowritebackup
set showtabline=999
set nu
set ruler
set updatetime=100
set cc=80
set signcolumn=yes
set cursorline
set termguicolors

" Disable netrw.
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

" Shell preference.
if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

" Blinking cursor.
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250,sm:block-blinkwait175-blinkoff150-blinkon175
