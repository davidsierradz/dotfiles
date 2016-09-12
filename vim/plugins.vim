filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/MatchTagAlways'
Plugin 'tpope/vim-vinegar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'benjifisher/matchit.zip'
Plugin 'Valloric/YouCompleteMe'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'wesQ3/vim-windowswap'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mileszs/ack.vim'
" Using this PHP Syntax file instead of the original:
" https://jasonwoof.com/gitweb/?p=vim-syntax.git;a=blob_plain;f=php.vim;hb=HEAD
" waiting for updating the base Vim one to PHP 7.
Plugin 'StanAngeloff/php.vim'
"Plugin 'ervandew/supertab'
"Plugin 'pangloss/vim-javascript'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'tpope/vim-fugitive'
"Plugin 'scrooloose/syntastic'
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
