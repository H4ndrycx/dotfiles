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
set gdefault
set showmatch
set incsearch
set ignorecase
set smartcase
set encoding=UTF-8
set laststatus=2
set noshowmode
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

"Powerline fonts
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''

" Config theme
set termguicolors
set t_Co=256

colorscheme gruvbox
highlight Normal ctermbg=NONE guibg=NONE

let g:airline_theme="dark"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

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
nnoremap <leader>n :bnext<CR>
nnoremap <leader>p :bprev<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>v :vs<CR>
