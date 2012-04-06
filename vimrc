call pathogen#infect()
syntax on
filetype plugin indent on

" Ruby <3 : tab = 2 = spaces
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

"Option for solarized colorscheme
if has('gui_running')
  set background=light
else
  set background=dark
endif

colorscheme solarized

" Open NERDTree if vim launched without arguments
autocmd vimenter * if !argc() | NERDTree | endif 
" Close vim if the only buffer open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Define ',' as the "Leader" character (:help leader)
let mapleader = ","
let g:mapleader = ","

" Set the <Leader>p ( ,p based on prior settings in this file ) binding,
" in normal mode only, to toggle nerdtree and not show anything in the
" info bar
nmap <silent> <leader>p :NERDTreeToggle<CR>
