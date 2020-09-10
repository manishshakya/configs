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
set scrolloff=5

" swp tp files
set backupdir=~/.tmp
set directory=~/.tmp

"set termguicolors
" Syntax coloring
syntax on

" Searching
set ignorecase
set smartcase
set incsearch
set hlsearch

set backspace=indent,eol,start
set mouse=vi

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

" Status Bar
Plug 'vim-airline/vim-airline'

" File Explorer
Plug 'scrooloose/nerdtree'
Plug 'jlanzarotta/bufexplorer'

Plug 'chrisbra/vim-diff-enhanced'

Plug 'dhruvasagar/vim-table-mode'

" Cheat Sheet
Plug 'lifepillar/vim-cheat40'

" Simple tab manager
Plug 'webdevel/tabulous'

" cscope
Plug 'ronakg/quickr-cscope.vim'
call plug#end()

set background=dark
colorscheme gruvbox

let g:cheat40_use_default = 0
let g:quickr_cscope_keymaps = 0
let g:quickr_cscope_use_qf_g = 1
let g:quickr_cscope_db_file = $PWD."/cscope.out"

" Tags
" Use CTRL+] to go to tag
" Use CTRL+T to go back
function! FindTag()
        let cw=expand("<cword>")
        let cmd=":ltag ".cw
        execute cmd
        execute ":lopen"
endf

function! CloseWin()
        execute ":cclose"
        execute ":lclose"
endf


" Key Mappings
inoremap <c-a> <esc>0i
inoremap <c-e> <esc>$a

nnoremap <c-a> 0
nnoremap <c-e> $

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

nnoremap <leader>ay "ay
nnoremap <leader>ap "ap
nnoremap <leader>by "by
nnoremap <leader>bp "bp
nnoremap <leader>b :Tagbar<cr>
nnoremap <leader>ec :tabedit $HOME/.vim/cheat40.txt<cr>
nnoremap <leader>e :NERDTreeToggle<cr>
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap <leader>nt :tabedit <cr>
nnoremap <leader>o o<esc>
nnoremap <leader>p "*p
nnoremap <leader>P "+p
nnoremap <leader>q :q<cr>
nnoremap <leader>sw :StripWhitespace<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>t <c-w>gf
nnoremap <leader>w :w<cr>
nnoremap <leader>y "*y
nnoremap <leader>Y "+y
nnoremap <leader>g gg<cr>
nnoremap <leader>G G<cr>
nnoremap <leader>fp :CtrlP<cr>
nnoremap <leader>ft :call FindTag()<cr>
nnoremap <leader>f :call FindTag()<cr>
nnoremap <leader>nh :nohlsearch<cr><cr>

nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l
nnoremap <leader>x :call CloseWin()<cr>
nmap <leader>fc <Plug>(FerretAckWord)
nmap <leader>c <Plug>(FerretAckWord)

" Cscope
" Use CTRL+o to go back
" Search for all symbol occurances of word under the cursor
nmap <leader>cs <plug>(quickr_cscope_symbols)
" Search for global definition of the word under the cursor
nmap <leader>cg <plug>(quickr_cscope_global)<cr>
" Search for all callers of the function name under the cursor
nmap <leader>cc <plug>(quickr_cscope_callers)<cr>
" Search for all files matching filename under the cursor
nmap <leader>cf <plug>(quickr_cscope_files)<cr>
" Search for all files including filename under the cursor
nmap <leader>ci <plug>(quickr_cscope_includes)<cr>
" Search for tex matching word under the cursor/visualy selected text
nmap <leader>ct <plug>(quickr_cscope_text)<cr>
" Enter an egrep patter for searching
nmap <leader>ce <plug>(quickr_cscope_egrep)<cr>
" Search all the functions called by funtion name under the cursor
nmap <leader>cd <plug>(quickr_cscope_functions)<cr>
" Search all the places where the symbol under the cursor is assigned a value
nmap <leader>ca <plug>(quickr_cscope_assignments)<cr>

inoremap jk <esc>
nnoremap <cr> :nohlsearch<cr><cr>
cabbrev help tab help
cabbrev h tab h
