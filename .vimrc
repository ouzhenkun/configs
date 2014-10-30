set nospell
set autoread
set noswapfile
set splitright
set splitbelow
set nocompatible

set backupdir=~/.vimbackup
set clipboard=unnamed

" Tab Control
nmap <C-]> :tabn<CR>
nmap <C-[> :tabp<CR>
nmap <C-t> :tabnew<CR>
nmap <C-q> :q<CR>

" let g:indent_guides_auto_colors = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Ctrl-P config
let g:ctrlp_regexp = 0
set wildignore+=*eclipse*,*/tmp/*,*/node_modules/*,*.jar,*.zip,*.so,*.swp,*.class
