"Confused? Remember that you can use :help <something>

call pathogen#infect() " Remember to call :Helptags to generate the vimhelpfiles
syntax on
filetype plugin indent on

"Option for solarized colorscheme
set background=light
colorscheme solarized
set t_Co=256

" Define ',' as the "Leader" character (:help leader)
let mapleader = ","
let g:mapleader = ","

" Reload vimrc when its saved
autocmd! bufwritepost vimrc source ~/.vim/vimrc

" Fast saving
map <leader>w :w!<cr>

" Ruby <3 : tab = 2 = spaces
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

set number "I like line numbers
set ruler " Where the cursor is, in the linebuffer
set scrolloff=3  " Always show 3 lines around cursor
set t_Co=256 " Use 256 colors

set hls " Highlight searches
set incsearch " Highlight search as you type
set ignorecase " Searches ignore case
set smartcase " Searching for 'a/Bc'  matches 'aBc' not 'abc'

" Make it easy to clear out searches to get rid of highlighting
nnoremap <leader><space> :let @/=''<cr>

" vim-statline (:help statline)
let g:statline_fugitive = 1

" taglist
let Tlist_Ctags_Cmd = "/usr/bin/ctags" "ctags command
let Tlist_WinWidth = 50 "width of ctags window
"toggle ctags window
map <F4> :TlistToggle<cr> 
"build ctags
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
