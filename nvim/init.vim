" Plugins
set rtp+=~/.local/share/nvim/plugged
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim'
Plug 'itchyny/lightline.vim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'dart-lang/dart-vim-plugin'
Plug 'kassio/neoterm'

Plug 'chriskempson/base16-vim'
Plug 'arcticicestudio/nord-vim'

call plug#end()
"-------------------
" General settings
"------------
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
set encoding=utf8
set t_Co=256
let base16colorspace=256
if (has("termguicolors"))
   set termguicolors
endif

set completeopt+=noselect
set hidden
set showtabline=0
filetype on
filetype plugin on
filetype plugin indent on

set guifont=Nerd
set encoding=UTF-8

let g:neoterm_default_mod='belowright' " open terminal in bottom split
let g:neoterm_size=16 " terminal split size
let g:neoterm_autoscroll=1 " scroll to the bottom when running a command
nnoremap <leader><cr> :TREPLSendLine<cr>j " send current line and move down
vnoremap <leader><cr> :TREPLSendSelection<cr> " send current selection

let g:dart_style_guide = 2

syntax enable                             " enable syntaax highlighting

colorscheme nord
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

set number                                " show line numbers
set ruler

set tabstop=4                             " 4 whitespaces for tabs visual presentation
set shiftwidth=4                          " shift lines by 4 spaces
set smarttab                              " set tabs for a shifttabs logic
set expandtab                             " expand tabs into spaces
set autoindent                            " indent when moving to the next line

set cursorline                            " show line under the cursor's line
set showmatch                             " show matching part of bracket parts (), [], {}

set nobackup                              " no backup files
set noswapfile

set backspace=indent,eol,start            " backspace removes all

set scrolloff=20
set listchars=tab:>\ ,trail:•,extends:#,nbsp:." Indent guides settings

" Auto update
set autoread
set autowrite

set noshowmode

