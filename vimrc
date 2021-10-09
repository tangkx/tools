syntax on
let mapleader=","
set number
set norelativenumber
set cursorline
set wrap
set wildmenu
set ttimeoutlen=0
set virtualedit=block,onemore


set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase


set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set laststatus=2
set ruler
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set showcmd


call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let g:SnazzyTransparent = 1
colorscheme snazzy
let g:lightline = {'colorscheme':'snazzy'}

" coc.nvim
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" coc.nvim end-----------------------------------

nnoremap <leader>s :source $MYVIMRC<cr>
" 分屏窗口移动
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
" 复制当前选中到系统剪切板
vmap <leader><leader>y "+y
" 将系统剪切板内容粘贴到vim
nnoremap <leader><leader>p "+p

" H到行首 L到行尾
noremap H ^
noremap L $

" Keep search pattern at the center of the screen.
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
" 去掉搜索高亮
noremap <silent><leader>nh :nohls<CR>
