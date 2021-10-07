set completeopt+=noselect
set hidden
set showtabline=0

" Specify a directory for plugins
set rtp+=~/.local/share/nvim/plugged
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim'               " Asynchronous Completion
Plug 'itchyny/lightline.vim'
Plug 'yuttie/comfortable-motion.vim'      " Smooth scrolling
Plug 'brooth/far.vim'                     " Find and replace
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'} "An intellisense engine

Plug 'chriskempson/base16-vim'            " Base 16 colors
Plug 'arcticicestudio/nord-vim'

call plug#end()

filetype on
filetype plugin on
filetype plugin indent on

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

