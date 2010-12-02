" http://github.com/neerajdotname/vim
"
" \v - edit .vimrc file
" \a - :Ack
" \d - toggle NERDTree file browser
" \e - open a new file in the current directory
" \t - open a new tab
" ctrl left/right arrow - to move between tabs




" =============================================================

"before pathogen is called filetype must be off
"later it is turned on. To see the status just type :filetype
filetype off

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


syntax on
filetype plugin indent on
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab

" Only do this part when compiled with support for autocommands
" http://vimcasts.org/episodes/whitespace-preferences-and-filetypes
if has("autocmd")
  " Enable file type detection
  filetype on

  " yaml does not like tabs
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab

  " JavaScript usually like tabs with 4 spaces. That's how jQuery is
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml

  " whenever I save .vimrc file load it instantly
  autocmd bufwritepost .vimrc source $MYVIMRC

  " if you want strip trailing whitespaces only to certain types of files then
  " white list them
  autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

endif

" http://vimcasts.org/episodes/tidying-whitespace/
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" Color scheme
colorscheme vividchalk
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

set noswapfile " Do not create swap file

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

" Ignore case when searching lowercase. if search term has any uppercase letter
" then search will be case sentitive
set smartcase

"turn on syntax highlighting
syntax on

" highlight the current line in every window and update the highlight as the cursor moves
set cursorline

" Always display the status line as the second last line in the editor window
set laststatus=2

set number "show line number
set numberwidth=5

"Ctrl left arrow – move one tab to the left
map <C-left> :tabp<CR>

"Ctrl right arrow – move one tab to the right
map<C-right> :tabn<CR>

"Don't show invisible characters
set nolist

" \ is the leader character
let mapleader = "\\"

" Opens a tab edit command with the path of the currently edited file filled in
" In normal mode do <Leader>e
map <Leader>e :tabe <C-R>=expand("%:p:h") . "/" <CR>

" hit \a instead of :Ack. Now I can do \a attr_accessor
nnoremap <leader>a :Ack

" Open a new tab with \t and that tab will be prepopulated with NERDTree
nmap <leader>t :tabnew<CR>:NERDTree<CR>

" \d to toggle NERDTree file browser
nmap <leader>d :NERDTreeToggle<CR>

" Use \v to edit .vimrc file
nmap <leader>v :tabedit $MYVIMRC<CR>



" hit \j to enable/disable jslint check
let g:jslint_status = 'enabled'
function Jscheck()
  if g:jslint_status == 'enabled'
    let g:jslint_status = 'disabled'
    echo 'jslint is disabled'
  else
    let g:jslint_status = 'enabled'
    echo 'jslint is enabled'
  endif
endfunction
nmap <leader>j :call Jscheck()<CR>

let jslint_command_options = '-conf "/Users/nsingh/dev/vim/jsl-0.3.0-mac/jsl.default.conf" -nofilelisting -nocontext -nosummary -nologo -process'
