"Confused? Remember that you can use :help <something>

call pathogen#infect() " Remember to call :Helptags to generate the vimhelpfiles
syntax on
filetype plugin indent on

" Define ',' as the "Leader" character (:help leader)
let mapleader = ","
let g:mapleader = ","

" Ruby <3 : tab = 2 = spaces
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

"Option for solarized colorscheme
set background=dark
colorscheme solarized

" Define ',' as the "Leader" character (:help leader)
let mapleader = ","
let g:mapleader = ","

" Open NERDTree if vim launched without arguments
autocmd vimenter * if !argc() | NERDTree | endif 
" Close vim if the only buffer open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Set the <Leader>p ( ,p based on prior settings in this file ) binding,
" in normal mode only, to toggle nerdtree and not show anything in the
" info bar
nmap <silent> <leader>p :NERDTreeToggle<CR>

set number "I like line numbers
set ruler " Where the cursor is, in the linebuffer
set scrolloff=3                 " Always show 3 lines around cursor
set t_Co=256                    " Use 256 colors

" Make it easy to clear out searches to get rid of highlighting
nnoremap <leader><space> :let @/=''<cr>

" Do you like remembering the case of a particular command? Me neither.
set ignorecase
set smartcase

" vim-statline (:help statline)
let g:statline_fugitive = 1


set t_Co=256
