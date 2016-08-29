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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
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

set guifont=Anonymous\ Pro\ for\ Powerline\ 11
set guiheadroom=-50
set list
set listchars=tab:▸\ ,eol:¬,trail:·,space:·
set showcmd  " Show partial commands
"set listchars+=,space:
"set lcs=space:
"noremap <F12> :set list!<CR>
noremap <F10> :set listchars=tab:▸\ ,eol:¬,trail:·<CR>
noremap <F12> :set listchars=tab:▸\ ,eol:¬,trail:·,space:·<CR>

" Show line numbers
set number
set hidden " Leave hidden buffers open
set history=100 "by default Vim saves your last 8 commands.  We can handle more

" Indenting configurations
syntax enable
set autoindent
set smartindent
set encoding=utf-8

set background=dark
"let g:solarized_termcolors=256
colorscheme solarized
hi SpecialKey cterm=standout ctermfg=3 ctermbg=NONE
hi VertSplit cterm=reverse
"hi SpecialKey ctermfg=0

" Text width ruler
set colorcolumn=81
highlight ColorColumn ctermbg=magenta

" Enable highlight the current cursor line
set cursorline
"highlight CursorLine ctermbg=magenta

" Disable text wrap
set nowrap
set noshowmode

" Set default window width
"if exists("+lines")
"    set lines=11
"endif
"if exists("+columns")
"  set columns=85
"endif
 " Fast redraw
set ttyfast
" List contents of all registers (that typically contain pasteable text).
nnoremap <silent> "" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>
" Paste on Gvim
set clipboard=unnamed,unnamedplus
" Toggle paste mode with F2 in insert mode
set pastetoggle=<F2>
set backspace=indent,eol,start "Better delete
"set showmode | Default in Vim on
set showmatch " Show matched brace for a brief time
set matchtime=3

" Settings for tabs and space indents
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
" Settings for splitting windows
set splitright
" Netrw settings
let g:netrw_liststyle=3 "NetrwTree mode
" absolute width of netrw window
"let g:netrw_winsize = -30
map <silent> <C-E> :Explore<CR>
map <silent> å :e.<CR>
" Status line options
set statusline=%F              " Relative file path
set statusline+=\ -\           " Separator
set statusline+=%y             " Filetype of the file
set statusline+=\ -\           " Separator
set statusline+=%n             " Buffer of the file
set statusline+=\ -\           " Separator
set statusline+=[%{&ff}        " Format of the file Unix or DOS
set statusline+=\              " Separator
set statusline+=%{strlen(&fenc)?&fenc:'none'}] "file encoding
set statusline+=\ -\           " Separator
set statusline+=%h%m%r%w       " Help, Modified and Read Only flags
set statusline+=%=             " Separation point between left and right items
set statusline+=%([%l-%L-%P]%) " Current line count, max and percentage
set statusline+=\              " Space Separator
set statusline+=[%c%V]         " Column number and Virtual Column number
set laststatus=2               " Always show status line

" Search options
set incsearch
set hlsearch
set ignorecase
set smartcase
highlight Search cterm=underline ctermfg=9
highlight IncSearch cterm=underline

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" Command-Line options
set wildmenu
set wildignorecase
set wildmode=list:longest,full

" Scroll options
set scrolloff=1
set sidescrolloff=15
set display+=lastline

set autoread "refresh file inside vim if changed

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
" Using <Nul> as <C-Space> becouse in gnome-terminal thats a null character
map <Space> /
map <Nul> ?
" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Buffers shortcuts

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Airline options

let g:airline_powerline_fonts=1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline_inactive_collapse=0

" Terminal only settings
if !has("gui_running")

    " give us 256 color schemes!
    set term=screen-256color

endif
