" -----------------------------------------------------------------------------
" |                            VIM Settings                                   |
" |                              GUI stuff                                    |
" -----------------------------------------------------------------------------


" OS Specific *****************************************************************
set fuoptions=maxvert,maxhorz " fullscreen options (MacVim only), resized window when changed to fullscreen
set guifont=Monaco:h17.00

set guioptions-=m    " remove menubar
set guioptions-=T    " remove toolbar
set guioptions-=r    " remove right scroll bar
set stal=2           " turn on tabs by default

set encoding=utf-8   " User UTF-8 everywhere

set anti             " Antialias font
set antialias        " Antialias font


" Default size of window
set columns=120
set lines=50

" Tab headings
set gtl=%t gtt=%F


" For File Browser
nnoremap <silent> <F8> :Exp<CR>
nnoremap <silent> <D-e> :Exp<cr>
"FuzzyFinderTextMate
nnoremap <silent><D-r> :FuzzyFinderTextMate<CR>

" save
noremap <silent> <D-s> :w<CR>

" tabs
map <silent> <D-t> :tabnew %<cr>
map <silent> <D-w> :tabclose<cr>

" relative path column number line number total line number percentage
set statusline=%-40f\ %10((%v)%)\ %10((%l/%L)%)\ %P
set laststatus=2
