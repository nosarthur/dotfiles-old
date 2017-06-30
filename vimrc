execute pathogen#infect()
execute pathogen#helptags()

set number
set nocompatible
set hlsearch

set autoindent
set smartindent

set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=80
set ignorecase

"set foldmethod=indent
"set nofoldenable
"set foldlevel=2

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

let mapleader = ","
noremap <Leader>e :quit<CR> " Quit current window
noremap <Leader>E :qa!<CR> " Quit all windows
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
vnoremap <Leader>s :sort<CR>

syntax on

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

set nobackup
set nowritebackup
set noswapfile

filetype on
filetype plugin on

set path+=**
set wildmenu

nmap <F7> :SyntasticToggle<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
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
