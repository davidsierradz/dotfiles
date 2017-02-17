" Be iMproved, required.
set nocompatible

" Source plugins file.
source ~/dotfiles/vim/plugins.vim




"--------------------------------General---------------------------------------"

" This command switches on syntax highlighting.
syntax enable

" Indenting configurations.
set autoindent
"set smartindent

" Settings for tabs and space indents.
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set encoding=utf-8

" Show partial commands.
set showcmd

" After 250 milliseconds write the buffer to the swap file.
set updatetime=250

" Leave hidden buffers open.
set hidden

"by default Vim saves your last 8 commands.  We can handle more.
set history=100

" Look up recurively for ctags file.
set tags+=tags;/

" Becouse we have a status bar disable showing if we are in insert mode in the
" Command line bar.
set noshowmode

" Fast redraw.
set ttyfast

"Better delete.
set backspace=indent,eol,start

" Command-Line options.
set wildmenu
set wildignorecase
set wildmode=list:longest,full

"refresh file inside vim if changed.
set autoread

" Generally we are working with mysql in sql files, auto set the default type.
let g:sql_type_default = 'mysql'

"Ignore case for completion in insert mode.
set infercase

"--------------------------------End General-----------------------------------"




"--------------------------------Visuals---------------------------------------"

" Show special characters.
set list

" Set the special characters default.
set listchars=tab:>-,eol:¬,extends:>,precedes:<,trail:·,space:·

" Show line numbers.
set number

" Relative positions for line numbers.
set relativenumber

set background=dark

colorscheme solarized

" Hide the background of the special characters in terminal.
highlight SpecialKey cterm=standout ctermfg=3 ctermbg=NONE

highlight VertSplit cterm=reverse

" Put a red underline in search mode.
highlight Search cterm=underline ctermfg=9
highlight IncSearch cterm=underline

" Color for the terminal column width ruler.
highlight ColorColumn ctermbg=magenta

" Text width ruler.
set colorcolumn=81

" Enable highlight the current cursor line.
set cursorline

" Disable text wrap.
set nowrap

" Show matched brace for a brief time.
set showmatch
set matchtime=3

" Always show the Status Line.
set laststatus=2

" Default Status line options without Vim Airline plugin.
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

" Scroll options.
set scrolloff=1
set sidescrolloff=5
set display+=lastline

" Set the width of the numberline.
set numberwidth=1

"--------------------------------End Visuals-----------------------------------"




"--------------------------------Search----------------------------------------"

" Search options
set incsearch
set hlsearch
set ignorecase
set smartcase

" Put line numbers in Netrw windows.
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" The Silver Searcher.
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

"--------------------------------End Search------------------------------------"




"--------------------------------Splits----------------------------------------"

" Splitting to the right by default.
set splitright

"--------------------------------End Splits------------------------------------"




"--------------------------------General Mappings------------------------------"

" Shortcut to toogle showing spaces and IndentLines.
nnoremap <M-F12> :set listchars=tab:>-,eol:¬,extends:>,precedes:<,trail:·<CR>
nnoremap <F12> :set listchars=tab:>-,eol:¬,extends:>,precedes:<,trail:·,space:·<CR>
nnoremap <C-F12> :IndentLinesToggle<CR>


" Regenerate ctags file.
nnoremap <leader>rc :!ctags -R --fields=+aimS-s --filter-terminator=php .<CR>

" Search tag.
nnoremap <leader>ft :tag<space>

" saves from normal mode.
nnoremap <leader>w :w<cr>

" Saves without sudo.
cmap w!! w !sudo tee > /dev/null %

" List contents of all registers (that typically contain pasteable text).
nnoremap <silent> "" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>

" Open Netrw file explorer in Present Working Directory with <Alt-W>.
nnoremap <silent> ÷ :e.<CR>

" Toggle paste mode with F2 in insert mode.
set pastetoggle=<F2>

" Clear the search highlight with <leader><space>.
"nnoremap <leader><space> :nohlsearch<CR>

" Clear the search highlight with <Alt-L>.
"nnoremap ì :nohlsearch<CR>

" Use <Alt-L> to clear the highlighting of :set hlsearch.
nnoremap <silent> ì :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR>ì

" Reloads a buffer.
nnoremap <Leader>r :w<CR>:e<CR>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
" Using <Nul> as <C-Space> because in gnome-terminal thats a null character.
"nnoremap <Space> /
"nnoremap <Nul> ?

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Buffers shortcuts.
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab.
nnoremap <leader>bq :bp <BAR> bd #<CR>

" Close the current buffer and move to the previous one and close the window
" This replicates the idea of closing a tab.
nnoremap <leader>bw :bp <BAR> bd #<CR> :q<CR>

" Remap go to last file with backspace.
nnoremap <BS> <C-^>

"Better window navigation.
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Put the Ack! command to not open first ocurrence of search.
nnoremap <Leader>fa :Ack!<Space>'

" Swap semicolon for colon ;<->: in normal mode.
"nnoremap ; :
"nnoremap : ;

" Enter 2 spaces with Ctrl-Tab.
inoremap <C-Tab> <Space><Space>

" Y yanks from current cursor position to end of line, more logical.
nnoremap Y y$

" Make Ctrl-e jump to the end of the current line in the insert mode.
inoremap <C-e> <C-o>$

" Toggle Relative number.
nmap <silent> <Leader>l :set relativenumber!<CR>

" Highlight last inserted text.
nnoremap gV `[v`]

" Disable Ex mode.
nnoremap Q <nop>

" Change pwd locally to current file path.
nnoremap <leader>cd :lcd %:p:h<CR>:pwd<CR>

"--------------------------------End General Mappings--------------------------"




"--------------------------------Plugins---------------------------------------"

"/
"/ CtrlP
"/

" Open Tags window with <Alt-R>.
nnoremap ò :CtrlPBufTag<cr>

" Open Most Recent Used Files window with <Alt-E>.
nnoremap å :CtrlPMRUFiles<cr>

" Open the Ctrl-P window buffer.
nnoremap <leader>bl :CtrlPBuffer<cr>

if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --path-to-ignore ~/.agignore --skip-vcs-ignores --hidden -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Ctrl-P window order and max results.
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

let g:ctrlp_show_hidden = 1

let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|vendor)|(\.(swp|ico|git|svn))$'

" Search by name, can switch with <C-d>.
let g:ctrlp_by_filename = 1

let g:ctrlp_reuse_window = 'netrw'

" Save the recent list of files only when exiting vim.
let g:ctrlp_mruf_save_on_update = 0

"/
"/ Vim Airline
"/

" Airline theme.
let g:airline_theme = 'powerlineish'

" SHow all airline things in the focus window only.
let g:airline_inactive_collapse=0

" Airline auto populate powerline fonts.
let g:airline_powerline_fonts=1

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Show the buffer number
let g:airline#extensions#tabline#buffer_idx_mode = 1

" Show the buffer id.
let g:airline#extensions#tabline#buffer_nr_show = 1

" Quick buffer navigations with the plugin.
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab

"/
"/ MatchTagAlways
"/

let g:mta_use_matchparen_group = 1

" Enabled files for the plugin.
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'php' : 1,
    \}

"/
"/ Ack.vim
"/

" Using ack.vim with Ag because of deprecation of ag.vim.
let g:ackprg = 'ag --vimgrep --path-to-ignore ~/dotfiles/ag/.agignore --skip-vcs-ignores --hidden'

"/
"/ Vim EasyMotion
"/

" Use spacebar to start easymotion.
nmap <C-Space> <leader><leader>

" Two char search.
nmap <Space> <Plug>(easymotion-s2)
"nmap <C-Space> <Plug>(easymotion-sn)

let g:EasyMotion_smartcase = 1

let g:EasyMotion_use_upper = 1

"let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'
let g:EasyMotion_keys = 'ASDGHKLQWERTYUIOPZXCVBNMFJ;'

"/
"/ Gundo.vim
"/

" Start plugin.
nnoremap <leader>u :GundoToggle<CR>

" Put preview window below current window.
let g:gundo_preview_bottom = 1

" Disable help.
let g:gundo_help = 0

let g:gundo_close_on_revert = 1

"/
"/ vim.maximizer
"/

let g:maximizer_set_default_mapping = 0

nnoremap <silent><leader>m :MaximizerToggle<CR>
vnoremap <silent><leader>m :MaximizerToggle<CR>gv
inoremap <silent><F3> <C-o>:MaximizerToggle<CR>

"/
"/ delimitMate
"/

" Disable automatic close on html files (already using vim-closetag).
au FileType html let b:delimitMate_autoclose = 0

"/
"/ indentLine
"/

let g:indentLine_char = '┆'
let g:indentLine_color_gui = '#657B83'

" indentLine will disable quotes in JSON files, install json plugin for fix.
let g:vim_json_syntax_conceal = 0

"--------------------------------End Plugins-----------------------------------"




"--------------------------------User Commands---------------------------------"

" :W sudo saves the file.
command W w !sudo tee % > /dev/null

"--------------------------------End User Commands-----------------------------"




"--------------------------------Auto Commands---------------------------------"

" Return to last edit position when opening files (You want this!).
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Set the indent options for Javascript files.
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" Set the indent options for CSS files.
autocmd Filetype css setlocal ts=2 sts=2 sw=2

" Set the indent options for HTML files.
autocmd Filetype html setlocal ts=2 sts=2 sw=2

" Autocommand to call PhpSyntaxOverride function.
augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

" Generally we are working with mysql in sql files, auto set the filetype.
"au BufNewFile,BufRead *.sql set filetype=mysql

" Wipe the netrw buffer when go hidden.
autocmd FileType netrw setl bufhidden=wipe

"--------------------------------End Auto Commands-----------------------------"




"--------------------------------Macros----------------------------------------"

"/
"/ PHP
"/

" Put a var_dump() selecting text from current point to end of word (e),
" searching for the closest empty line to paste it and a die().
let @a = 'ye}ovar_dump(0);die();'

" Put a var_dump() selecting text from current point to end of word (e),
" pasting under the current line and a die().
let @s = 'yeovar_dump(0);die();'

"--------------------------------End Macros------------------------------------"




"--------------------------------Functions-------------------------------------"

" Function to override @tags and @params in the comments sections of PHP.
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

"--------------------------------End Functions---------------------------------"




"--------------------------------Terminal Only---------------------------------"

if !has("gui_running")

    " give us 256 color schemes!
    set term=screen-256color

    "let g:solarized_termcolors=256

endif

"--------------------------------End Terminal Only-----------------------------"




"--------------------------------Tips and Remainders---------------------------"

"--------------------------------End Tips and Remainders-----------------------"
