syntax on
filetype plugin indent on
set nowrap
set nohlsearch
set expandtab
set virtualedit=all
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent
set number
set relativenumber
set gdefault
set showmatch
set incsearch
set ignorecase
set smartcase
set encoding=UTF-8
set laststatus=2
set inccommand=split
set cursorline
set hidden
set modifiable
set updatetime=300
" create dir first ~/.vim/undo
set noundofile
set undodir^=~/.vim/undo
set directory^=~/.vim/tmp/

runtime ./plug.vim

au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

if has('gui_running')
  set t_Co=256
endif

" Config theme
set termguicolors
set t_Co=256

colorscheme gruvbox
highlight Normal ctermbg=NONE guibg=NONE

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
endif

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Keybinds
let mapleader = "\<Space>"
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>a  <cmd>lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>h  <cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>
nnoremap <leader>n  <cmd>lua require('harpoon.ui').nav_next()<CR>
nnoremap <leader>p  <cmd>lua require('harpoon.ui').nav_prev()<CR>
nnoremap <leader>v :vs<CR>
