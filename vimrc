if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif
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

" swp tmp files
set backupdir=~/.tmp
set directory=~/.tmp

" Syntax coloring
syntax on

" Searching
set ignorecase
set smartcase
set incsearch
set hlsearch
:nnoremap <CR> :nohlsearch<CR><CR>
:imap jk <Esc>
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
Plug 'kien/ctrlp.vim'
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

Plug 'dhruvasagar/vim-table-mode'
Plug 'lifepillar/vim-cheat40'
call plug#end()
let g:cheat40_use_default = 0

set background=dark
"colorscheme gruvbox
colorscheme solarized8
autocmd VimEnter * nested :call tagbar#autoopen(1)
set mouse=vi
let g:which_key_map ={}
let g:which_key_map.w = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
     \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : ['resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : ['resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }

let g:which_key_map.b = {
       \ 'name' : '+buffer' ,
       \ '1' : ['b1'        , 'buffer 1']        ,
       \ '2' : ['b2'        , 'buffer 2']        ,
       \ 'd' : ['bd'        , 'delete-buffer']   ,
       \ 'f' : ['bfirst'    , 'first-buffer']    ,
       \ 'h' : ['Startify'  , 'home-buffer']     ,
       \ 'l' : ['blast'     , 'last-buffer']     ,
       \ 'n' : ['bnext'     , 'next-buffer']     ,
       \ 'p' : ['bprevious' , 'previous-buffer'] ,
       \ '?' : ['Buffers'   , 'fzf-buffer']      ,
       \ }
call which_key#register('<F10>', "g:which_key_map")
fun! Shortcut()
        echo "gt - Goto next tab"
        echo "<ctrl>o - Go back to previous Page"
        echo "% - Go to matching pairs of (). {} or []"
        echo "<ctrl>R - redo"
        echo "o - Open up a new line below the cursor and place in insert mode"
        echo "u - Undo"
        echo "zz - save and exit"
        echo "w - forword word movement"
        echo "b - backward word movement"
        echo "F1 - Help"
        echo "F2 - Find Files(CtrlP)"
        echo "F4 -"
        echo "F5 -"
        echo "F6 -"
        echo "F7 -"
        echo "F8 -"
        echo "F9 -"
        echo "F10 - Vim which key plugin"
        echo "F11 -"
        echo "F12 - Shortcut Notes"
        echo "<leader>a - Search (Ack)"
        echo "<leader>r - Search and Replace (Acks)"
        echo "<leader>c - Search under cursor"
        echo "<leader>s - Strip white spaces"
        echo "<ctrl>p - CtrlP"
        echo "<ctrl>t - Open in Tab when pressed in CtrlP list window"
endf

" Key Mappings
nmap <F2> :CtrlP<CR>
nmap <F3> :Ack<Space>
noremap <F10> :<c-u>WhichKey '<F10>'<CR>
vnoremap <F10> :<c-u>WhichKeyVisual '<F10>'<CR>
noremap <F12> :call Shortcut() <CR>

" Leader key mappings
nmap <leader>s :StripWhitespace<CR>
nmap <leader>c <Plug>(FerretAckWord)
