"Confused? Remember that you can use :help <something>
"
" Vundle!!!
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'

" OTHER CONFIG STUFF "
syntax on
filetype plugin indent on

" set autochdir
autocmd BufEnter * silent! lcd %:p:h

let g:solarized_termcolors=256

"Option for solarized colorscheme
set t_Co=256 " Use 256 colors
set background=light
colorscheme solarized

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

set hls " Highlight searches
set incsearch " Highlight search as you type
set ignorecase " Searches ignore case
set smartcase " Searching for 'a/Bc'  matches 'aBc' not 'abc'

" Make it easy to clear out searches to get rid of highlighting
nnoremap <leader><space> :let @/=''<cr>

" vim-statline (:help statline)
let g:statline_fugitive = 1

" CtrlP Config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*/target/*,*/dist/*,*/out/*,*/lib/*,*/build/*    " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|sass-cache)$'
let g:ctrlp_max_files=100000
