call plug#begin()
    if has("nvim")
        Plug 'tpope/vim-fugitive'
        Plug 'junegunn/vim-easy-align'
        Plug 'nvim-treesitter/nvim-treesitter', { 'do': 'TSUpdate' }
        Plug 'windwp/nvim-autopairs'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'
        Plug 'neovim/nvim-lspconfig'
        Plug 'williamboman/nvim-lsp-installer'
        Plug 'tami5/lspsaga.nvim'
        Plug 'hrsh7th/cmp-nvim-lsp'
        Plug 'hrsh7th/cmp-buffer'
        Plug 'hrsh7th/cmp-path'
        Plug 'hrsh7th/cmp-cmdline'
        Plug 'hrsh7th/nvim-cmp'
        Plug 'onsails/lspkind.nvim'
        Plug 'L3MON4D3/LuaSnip'
        Plug 'ThePrimeagen/harpoon'

        " Theme
        Plug 'folke/tokyonight.nvim'
        Plug 'morhetz/gruvbox'
        Plug 'lissaferreira/dalton-vim'
        Plug 'bluz71/vim-moonfly-colors'
    endif
call plug#end()
