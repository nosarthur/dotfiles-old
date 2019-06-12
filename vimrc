call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'itchyny/lightline.vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
call plug#end()


"automatic reload of .vimrc
autocmd! bufwritepost .vimrc source %

set clipboard=unnamed

set number
set nocompatible
set hlsearch
set laststatus=2
set spell

set autoindent
"set smartindent

set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=80
set ignorecase
set updatetime=100
set nowrap

"set foldmethod=indent
"set nofoldenable
"set foldlevel=2

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

let mapleader = ","
"noremap <Leader>e :quit<CR> " Quit current window
noremap <Leader>e :qa!<CR> " Quit all windows
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
vnoremap <Leader>s :sort<CR>

syntax enable

" easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" get rid of temporary files
set nobackup
set nowritebackup
set noswapfile

filetype on
filetype plugin on

" recursive find
set path+=**

" command hint
set wildmenu
set wildmode=longest:list,full

nmap <F10> :SyntasticToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']
let g:go_list_type = "quickfix"

let g:go_disable_autoinstall = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }


let g:syntastic_python_checkers=["flake8"]
let g:syntastic_python_flake8_args="--ignore=E125,E126,E127,E128,E201,E221,E501,E303"
let g:syntastic_tex_checkers = ['lacheck']
let g:syntastic_rst_checkers=['sphinx']

let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['rst', 'go'] }
