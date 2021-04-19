call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'dyng/ctrlsf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'machakann/vim-swap'
Plug 'tpope/vim-fugitive'
call plug#end()

let g:seoul256_background = 235
colo seoul256


"automatic reload of .vimrc
autocmd! bufwritepost .vimrc source %

set clipboard=unnamed

"set number relativenumber
set number
set nocompatible
set hlsearch
set laststatus=2
set spell
set title
set encoding=utf-8

set autoindent
"set smartindent

set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=80
set ignorecase
set smartcase
set updatetime=100
set nowrap

"set foldmethod=indent
"set nofoldenable
"set foldlevel=2

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWritePre * %s/\s\+$//e

let mapleader = ","
noremap <Leader>q :q<CR> " Quit current windows
noremap <Leader>e :qa!<CR> " Quit all windows
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>
vnoremap <Leader>s :sort<CR>

noremap <Leader><space> :noh<CR>:call clearmatches()<cr>
nnoremap n nzzzv
nnoremap N Nzzzv

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

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" fix coc.nvim box color
highlight Pmenu ctermbg=black ctermfg=yellow


nmap <Leader>t :TagbarToggle<CR>
nmap <leader>a :CtrlSF -R ""<Left>
nmap <leader>f :GFiles!<CR>
nmap <leader>o :Files!<CR>
nmap <leader>w :BLines<CR>
nmap <leader>l :Lines!<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>r :Rg!<CR>
nmap <leader>d :GitGutterFold<CR>


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

let g:AutoPairsShortcutFastWrap='<C-w>'
