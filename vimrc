execute pathogen#infect()
execute pathogen#helptags()

set nocompatible

set autoindent
set smartindent

set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=80
set ignorecase

syntax on

filetype on
filetype plugin on

nmap <F8> :TagbarToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:go_disable_autoinstall = 0

" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1  
