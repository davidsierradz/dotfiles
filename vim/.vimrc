set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" vim +PluginInstall - Plugin install from terminal
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" give us 256 color schemes!
set term=screen-256color
set list
set listchars=tab:▸\ ,eol:¬,trail:·
" Show line numbers
set number
set hidden " Leave hidden buffers open
set history=100 "by default Vim saves your last 8 commands.  We can handle more
syntax enable
set background=dark
colorscheme solarized

" Text width ruler
set colorcolumn=81
highlight ColorColumn ctermbg=magenta

" Disable text wrap
set nowrap

" Set default window width
"if exists("+lines")
"    set lines=11
"endif
"if exists("+columns")
"  set columns=85
"endif
