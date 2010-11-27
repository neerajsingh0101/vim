filetype off

call pathogen#runtime_append_all_bundles()

syntax on
filetype plugin indent on
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab

set noswapfile " Do not create swap file

" Color scheme
colorscheme vividchalk
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

" Keep large command line history and undo levels
set history=1000
set undolevels=1000

" while closing an unsaved tab prompt for user input on command line rather than displaying GUI popup
set guioptions+=c

" incremental search, search as you type
set incsearch

" Show matching brackets, flashes matching brackets or parentheses
set showmatch

" Highlight all matches in a search
set hlsearch

