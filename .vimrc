set nocompatible
set autoindent
set modifiable
set nobackup
set nowritebackup
set number                      " Show line numbers
set autoread                    " Set autoread when a file is changed outside
set autowrite                   " Writes on make/shell commands
set noswapfile                  " No swap files, use version control instead
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current
set cursorline                  " Highlight current line
set hlsearch                    " Highlight all search matches
set incsearch                   " Find as you type search
set ignorecase                  " Case insensitive search
set history=100                 " Number of things to remember in history.
set laststatus=2                " Always display the status line
set showtabline=2               " Display tab bar all the time
set clipboard=unnamed           " Use OS clipboard for copypasta
set backspace=indent,eol,start  " Backspace for dummies

" Show ALL white spaces as a character
set list
set listchars=tab:»●,trail:●

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=

" Default to soft tabs, 2 spaces
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

let mapleader = ","

" Swap iTerm2 cursors in vim insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Keep search matches in the middle of the window
nmap n nzzzv
nmap N Nzzzv
nmap * *zzzv
nmap # #zzzv
nmap g* g*zzzv
nmap g# g#zzzv

" Remove search highlight
map <C-C> <C-C>:noh<CR>

" Navigation between windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l
map <C-H> <C-W>h

" Use CTRL-S for saving, also in Insert mode
" Please add this line to your .bash_profile: alias vim="stty stop '' -ixoff; vim"
nmap <C-S> :update<CR>
vmap <C-S> <C-C>:update<CR>
imap <C-S> <C-C>:update<CR>

" Tab control
nmap <S-L> :tabn<CR>
nmap <S-H> :tabp<CR>
nmap <Leader>1 :tabn1<CR>
nmap <Leader>2 :tabn2<CR>
nmap <Leader>3 :tabn3<CR>
nmap <Leader>4 :tabn4<CR>
nmap <Leader>5 :tabn5<CR>
nmap <Leader>6 :tabn6<CR>
nmap <Leader>7 :tabn7<CR>
nmap <Leader>8 :tabn8<CR>
nmap <Leader>9 :tabn9<CR>
nmap <C-T> :tabnew<CR>
nmap <C-Q> :q


"
" Vundle
" https://github.com/gmarik/vundle
"
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'gmarik/Vundle.vim'

Plugin 'tomasr/molokai'

Plugin 'kchmck/vim-coffee-script'

Plugin 'godlygeek/tabular'
nmap <Leader>a& :Tabularize /&<CR>
vmap <Leader>a& :Tabularize /&<CR>
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a=> :Tabularize /=><CR>
vmap <Leader>a=> :Tabularize /=><CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a,, :Tabularize /,\zs<CR>
vmap <Leader>a,, :Tabularize /,\zs<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

Plugin 'bling/vim-airline'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

Plugin 'scrooloose/syntastic'
let g:syntastic_html_checkers = []

Plugin 'groenewege/vim-less'

Plugin 'scrooloose/nerdcommenter'

Plugin 'tpope/vim-fugitive'

Plugin 'airblade/vim-gitgutter'
let g:gitgutter_max_signs=10000
nmap <Leader>j <Plug>GitGutterNextHunk
nmap <Leader>k <Plug>GitGutterPrevHunk

Plugin 'Yggdroot/indentLine'
let g:indentLine_char = '┊'

Plugin 'mhinz/vim-startify'
set viminfo='100,n$HOME/.vim/viminfo

Plugin 'Lokaltog/vim-easymotion'

Plugin 'mattn/webapi-vim'

Plugin 'mattn/gist-vim'
let g:gist_post_private = 1

Plugin 'zhenkunou/vim-tabline'

Plugin 'mileszs/ack.vim'
let g:ackhighlight = 1

Plugin 'Shougo/neocomplcache.vim'
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_delimiter=1
let g:neocomplcache_enable_fuzzy_completion=1
imap <expr> <Tab>   pumvisible() ? "\<C-N>" : "\<Tab>"
imap <expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<S-Tab>"
imap <expr> <CR>    pumvisible() ? "\<C-Y>" : "\<CR>"
imap <expr> <C-B>   neocomplcache#cancel_popup()

Plugin 'terryma/vim-multiple-cursors'
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-m>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<C-c>'

Plugin 'kien/ctrlp.vim'
let g:ctrlp_show_hidden = 1
let g:ctrlp_clear_cache_on_exit = 0
set wildignore+=*/tmp/*,*/.tmp/*,*/dist/*,*/.idea/*,*/.live-archive/*,*/.DS_Store/*,*/node_modules/*,*/platforms/*,*.jar,*.zip,*.so,*.swp,*.class,*.map

Plugin 'scrooloose/nerdtree'
map <C-E> :NERDTreeToggle<CR>

syntax on                 " Syntax highlighting
filetype plugin indent on " Automatically detect file types
"
" Vundle End
"

color molokai
hi CursorLine  ctermbg=236                            cterm=none
hi Visual      ctermbg=236
hi Search      ctermfg=222        ctermbg=240         cterm=none
hi MatchParen  ctermfg=none       ctermbg=none        cterm=underline
hi Pmenu       ctermfg=LightGray  ctermbg=DarkGray
hi PmenuSel    ctermfg=White      ctermbg=DarkBlue
hi PmenuSbar   ctermbg=DarkGray
hi TabLine     ctermfg=LightGray  ctermbg=DarkGray    cterm=NONE
hi TabLineSel  ctermfg=White      ctermbg=DarkBlue    cterm=NONE
hi TabLineFill ctermfg=Black      ctermbg=DarkGray    cterm=NONE

