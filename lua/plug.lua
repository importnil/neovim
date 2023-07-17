local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- Mason and stuff.
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'WhoIsSethDaniel/mason-tool-installer.nvim'
Plug 'neovim/nvim-lspconfig'

-- Navigator with signature plugin.
Plug('ray-x/guihua.lua', { ['do'] = 'cd lua/fzy && make' })
Plug 'ray-x/navigator.lua'
Plug 'ray-x/lsp_signature.nvim'

-- nvim-cmp and stuff.
Plug 'onsails/lspkind-nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'windwp/nvim-autopairs'

-- Java.
Plug 'mfussenegger/nvim-jdtls'

-- Reopen files at last edited position.
Plug 'farmergreg/vim-lastplace'

-- Highlighter.
Plug 'rrethy/vim-illuminate'

-- Wilder (cmdline autocompletion).
Plug 'gelguy/wilder.nvim'

-- FZF.
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

-- FZY.
Plug 'romgrk/fzy-lua-native'

-- Notable comments highlighter.
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'

-- Comment toggler.
Plug 'numToStr/Comment.nvim'

-- Snippets.
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

-- NvimTree.
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

-- Symbols Outline.
Plug 'simrat39/symbols-outline.nvim'

-- Feline.
Plug 'feline-nvim/feline.nvim'
Plug 'Hitesh-Aggarwal/feline_theme.nvim'

-- Git.
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'f-person/git-blame.nvim'

-- Indentation guides.
Plug 'lukas-reineke/indent-blankline.nvim'

-- Treesitter.
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'tree-sitter/tree-sitter-go'

-- Themes, schemes and icons.
Plug('folke/tokyonight.nvim', { ['branch'] = 'main' })
Plug 'sainnhe/everforest'
Plug 'cormacrelf/vim-colors-github'
Plug 'ryanoasis/vim-devicons'

-- ChatGPT.
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'dpayne/CodeGPT.nvim'

vim.call('plug#end')

-- TODO: """ Highlight whitespace and add final newline char.
