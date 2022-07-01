call plug#begin()

if has("nvim")
    Plug 'tpope/vim-fugitive'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/vim-easy-align'
    Plug 'morhetz/gruvbox'
    Plug 'lissaferreira/dalton-vim'
    Plug 'bluz71/vim-moonfly-colors'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': 'TSUpdate' }
    Plug 'windwp/nvim-autopairs'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'tami5/lspsaga.nvim'
    Plug 'nvim-lua/completion-nvim'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'onsails/lspkind.nvim'
    Plug 'L3MON4D3/LuaSnip'
endif

call plug#end()
