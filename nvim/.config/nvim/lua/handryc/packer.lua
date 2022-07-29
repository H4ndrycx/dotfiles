-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'tpope/vim-fugitive'
    use 'junegunn/vim-easy-align'
    use 'nvim-treesitter/nvim-treesitter'    
    use 'windwp/nvim-autopairs'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'tami5/lspsaga.nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'onsails/lspkind.nvim'
    use 'L3MON4D3/LuaSnip'
    use 'ThePrimeagen/harpoon'

    -- Theme
    use 'folke/tokyonight.nvim'
    use 'morhetz/gruvbox'
    use 'lissaferreira/dalton-vim'
    use 'bluz71/vim-moonfly-colors'
end)
