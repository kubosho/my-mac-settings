set encoding=utf-8
scriptencoding utf-8

""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
colorscheme desert
syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""

set number
" color number
" ref: http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
hi LineNr ctermfg=148 ctermbg=24
set ruler
set wrap
set list
set listchars=tab:▸\ ,trail:-,eol:¬

""""""""""""""""""""""""""""""""""""""""""""""""""

set backspace=2
set laststatus=2
set hidden

""""""""""""""""""""""""""""""""""""""""""""""""""

set showmatch
set showcmd

""""""""""""""""""""""""""""""""""""""""""""""""""

set hlsearch
set ignorecase
set smartcase

""""""""""""""""""""""""""""""""""""""""""""""""""

set backupdir=~/.vim-backup/
set clipboard=unnamed,autoselect
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set smarttab

""""""""""""""""""""""""""""""""""""""""""""""""""

" Show zenkaku space
" ref: http://inari.hatenablog.com/entry/2014/05/05/231307
function! ShowZenkakuSpace()
  highlight ShowZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
  augroup ShowZenkakuSpace
    autocmd!
    autocmd ColorScheme * call ShowZenkakuSpace()
    autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ShowZenkakuSpace', '　')
  augroup END

  call ShowZenkakuSpace()
endif

""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mxw/vim-jsx'
Plugin 'Quramy/tsuquyomi'
Plugin 'digitaltoad/vim-pug'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

""""""""""""""""""""""""""""""""""""""""""""""""""

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"

au BufRead,BufNewFile *.jsx set filetype=javascript.jsx

