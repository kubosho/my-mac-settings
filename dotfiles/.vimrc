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

" dein Scripts
if &compatible
  set nocompatible " Be iMproved
endif

" Required:
set runtimepath^=./repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('.'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimproc.vim', { 'build': 'make' })
" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
call dein#add('justinmk/vim-dirvish')
call dein#add('pangloss/vim-javascript')
call dein#add('mxw/vim-jsx')
call dein#add('Quramy/tsuquyomi')

" Required:
call dein#end()

" Required:
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""

" Poweerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-dirvish
setf dirvish

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

