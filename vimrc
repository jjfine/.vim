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
