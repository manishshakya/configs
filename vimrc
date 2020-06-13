"if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
"  set t_Co=256
"endif
"set path=$PWD/**,
set path=.,,**
set clipboard=unnamed,unnamedplus,autoselect
set showmode
set number
set wrap
set cursorline
set autoread
set showmatch

set autoindent
set smartindent

" Tab settings
set tabstop=8
set expandtab
set shiftwidth=8
set softtabstop=8
set scrolloff=3
" swp tp files
set backupdir=~/.tmp
set directory=~/.tmp
set termguicolors
" Syntax coloring
syntax on
" Searching
set ignorecase
set smartcase
set incsearch
set hlsearch
set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')
" vim color schemes
Plug 'rafi/awesome-vim-colorschemes'
" Tag current file
Plug 'majutsushi/tagbar'
" grep
Plug 'mhinz/vim-grepper'
" Stripwhite space
Plug 'ntpeters/vim-better-whitespace'
" git
Plug 'tpope/vim-fugitive'

" Search and Replace multifiles
Plug 'wincent/ferret'
Plug 'ctrlpvim/ctrlp.vim'
" Surround
Plug 'tpope/vim-surround'

" Status Bar
Plug 'vim-airline/vim-airline'
" File Explorer
Plug 'scrooloose/nerdtree'
Plug 'jlanzarotta/bufexplorer'

Plug 'vim-scripts/gtags.vim'
Plug 'tpope/vim-unimpaired'
Plug 'liuchengxu/vim-which-key'
Plug 'chrisbra/vim-diff-enhanced'

Plug 'dhruvasagar/vim-table-mode'
" Cheat Sheet
Plug 'lifepillar/vim-cheat40'
" Simple tab manager
Plug 'webdevel/tabulous'
call plug#end()

set background=dark
colorscheme deus
autocmd VimEnter * nested :call tagbar#autoopen(1)
set mouse=vi

let g:cheat40_use_default = 0

fun! Shortcut()
        echo "F1 - Help"
        echo "F2 - Find Files(CtrlP)"
        echo "F3 - Ack"
        echo "F4 - Write and Close"
        echo "F5 - Open File under cursor"
        echo "F6 - Next Tab"
        echo "F7 -"
        echo "F8 -"
        echo "F9 -"
        echo "F10 - Vim which key plugin"
        echo "F11 -"
        echo "F12 - Shortcut Notes"
endf
" Key Mappings
nnoremap <f2> :CtrlP<cr>
nnoremap <f3> :Ack<space>
nnoremap <f4> :wq<cr>
nnoremap <f5> <c-w>gf
nnoremap <f6> gt
nnoremap <f12> :call shortcut()<cr>

" Leader key mappings
nnoremap <leader>s :StripWitespace<cr>
nnoremap <leader>e :NERDTreeToggle<cr>
nmap <leader>c <Plug>(FerretAckWord)

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

inoremap <c-a> <esc>0i
inoremap <c-e> <esc>$a

nnoremap <c-a> 0
nnoremap <c-e> $
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap <leader>ec :tabedit $HOME/.vim/cheat40.txt<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>o o<esc>
"nnoremap <leader>t :let mycurf=expand("<cfile>:p")<cr> :execute(":tabe ". mycurf)<cr>

nnoremap <leader>t <c-w>gf
nnoremap <leader>tl :tabs<cr>
nnoremap <leader>tn :tabn<cr>
nnoremap <leader>tb :tabb<cr>
nnoremap <leader>tf :tabfirst<cr>
nnoremap <leader>t1 1gt
nnoremap <leader>t2 2gt
nnoremap <leader>t3 3gt
nnoremap <leader>t4 4gt
nnoremap <leader>t5 5gt
nnoremap <leader>t6 6gt
nnoremap <leader>t7 7gt
nnoremap <leader>t8 8gt
nnoremap <leader>t9 9gt

nnoremap <leader>q :q<esc>
nnoremap <leader>w :w<esc>
nnoremap <cr> :nohlsearch<cr><cr>
inoremap jk <esc>
cabbrev help tab help
cabbrev h tab h
