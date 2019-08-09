"--------------------------------Plugins---------------------------------------" {{{
" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

"----------------Basics----------------- {{{
" Using this until the unlisted netrw buffer bug is solved.
Plug 'justinmk/vim-dirvish'

" Allows you to configure % to match more than just single characters.
Plug 'andymass/vim-matchup'
let g:loaded_matchit = 1

" Jump anywhere in current screen.
Plug 'easymotion/vim-easymotion'

" Visualize your Vim undo tree.
Plug 'simnalamburt/vim-mundo'

" Automatic closing of quotes, parenthesis, brackets
" also expands spaces and enters.
Plug 'tmsvg/pear-tree'

" Change or add pair of chars surrouding an object.
Plug 'tpope/vim-surround'

" Enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'

" Pairs of handy bracket mappings.
Plug 'tpope/vim-unimpaired'

" Readline style insertion.
Plug 'tpope/vim-rsi'

" Replace operator for Vim
Plug 'svermeulen/vim-subversive'

" Vim plugin that maintains a yank history to cycle between when pasting.
Plug 'svermeulen/vim-yoink'

" Plugin that adds a 'cut' operation separate from 'delete'.
Plug 'svermeulen/vim-cutlass'

" Toggle comments.
Plug 'tpope/vim-commentary'

" Set the 'path' option for miscellaneous file types.
Plug 'tpope/vim-apathy'
"}}}

"--------------Interface---------------- {{{
" Minimal colorscheme for vim.
Plug 'davidsierradz/vim-colors-plain'

" Smart close of buffers.
Plug 'Asheq/close-buffers.vim'

" Search your selection text with * or #.
Plug 'haya14busa/vim-asterisk'

" Make the yanked region apparent.
Plug 'machakann/vim-highlightedyank'

" Draw boxes and arrows in ascii.
" Plug 'gyim/vim-boxdraw', { 'for': 'markdown' }
"}}}

"-------------Integrations-------------- {{{
" FZF.
" Already installed on Manjaro-i3.
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

" Editorconfig.
Plug 'editorconfig/editorconfig-vim'

" markdown preview plugin for (neo)vim.
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
"}}}

"-------Completions and omnifuncs------- {{{
" " Autocompletion framework.
" Plug 'ncm2/ncm2'
" " ncm2 requires nvim-yarp
" Plug 'roxma/nvim-yarp'
" " Some completions
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'
" Plug 'ncm2/ncm2-ultisnips'
" Plug 'fgrsnau/ncm2-otherbuf', { 'branch': 'ncm2' }

" Snippet Engine.
Plug 'SirVer/ultisnips'

" List of snippets for Ultisnips.
Plug 'honza/vim-snippets'

" Syntax checker and linter.
Plug 'w0rp/ale'

" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"}}}

"------Syntax files and Languages------- {{{
" Yet Another JavaScript Syntax for Vim.
" Plug 'othree/yajs.vim'
Plug 'pangloss/vim-javascript'

" ES.Next syntax for Vim.
" Plug 'othree/es.next.syntax.vim'

" React JSX syntax highlighting and indenting for vim.
" Plug 'maxmellon/vim-jsx-pretty'
"}}}

" Initialize plugin system
call plug#end()
"--------------------------------End Plugins-----------------------------------"
"}}}


"--------------------------------General---------------------------------------"{{{
" Settings for tabs and space indents.
set tabstop=2
set shiftwidth=2
let &softtabstop =&shiftwidth
set expandtab

" Leave hidden buffers open.
set hidden

" Command-Line options.
set wildignorecase
set wildmode=list:longest,full

" Ignore case for completion in insert mode.
set infercase

" Stop certain movements from always going to the first character of a line.
set nostartofline

" Raise a dialog instead of failing a command.
set confirm

" Make ~ an operator.
set tildeop

" Only save folds with :mksession.
set viewoptions=folds

" Round indenting with < and > to shiftwidth.
set shiftround

" Select with the mouse.
set mouse=a

" Sync clipboard with +.
set clipboard=unnamedplus

" Remove tags from completions.
set complete=.,w,b,u

" Set the title for current terminal instance.
set title

" Set <Space> as leader key.
let mapleader = " "

set foldlevel=3

set laststatus=2
set statusline=
" Relative file path
set statusline=%f
" Separator
set statusline+=\ 
" Filetype of the file
set statusline+=%y
" Separator
set statusline+=\ 
" Format of the file Unix or DOS
set statusline+=[%{&ff}
" Separator
set statusline+=\ 
"file encoding
set statusline+=%{strlen(&fenc)?&fenc:'none'}]
" Separator
set statusline+=\ 
" Help, Modified and Read Only flags
set statusline+=%h%m%r%w%q
" Separation point between left and right items
set statusline+=%=
" Space Separator
set statusline+=\ 
" Foldlevel
set statusline+=%{strlen(&foldlevel)?&foldlevel:''}
" Space Separator
set statusline+=\ 
" Column number and Virtual Column number
set statusline+=%P
" Space Separator
set statusline+=\ 
" Current line count, max and percentage
set statusline+=%([%l-%c%V]%)
" ALE Errors
set statusline+=%{LinterStatus()}

" Allow local .nvimrc files.
set exrc
set secure

" Enable persistent undo so that undo history persists across vim sessions.
set undofile
"--------------------------------End General-----------------------------------"
"}}}


"--------------------------------Visuals---------------------------------------"{{{
" Show matched brace for a brief time.
set showmatch

" Scroll options.
set scrolloff=1
set sidescrolloff=5

" Enable true color support
set termguicolors

" Live substitution
set inccommand=nosplit

" Break words if the wrap option is set.
set linebreak

" Indent a wrapped line.
set breakindent

" Disable two spaces in join commands.
set nojoinspaces

" Special chars.
set listchars=tab:→\ ,eol:₋,extends:⟩,precedes:⟨,trail:·,space:·

" Disable text wrap.
set nowrap
"--------------------------------End Visuals-----------------------------------"
"}}}


"--------------------------------Search----------------------------------------"{{{
" Search options
set ignorecase
set smartcase

" Use global in substitution per default.
set gdefault
"--------------------------------End Search------------------------------------"
"}}}


"--------------------------------Splits----------------------------------------"{{{
" Splitting to the right by default.
set splitright
"--------------------------------End Splits------------------------------------"
"}}}


"--------------------------------General Mappings------------------------------"{{{
" Use j and k in wrap lines unless preceded by a count.
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

" Toggle paste mode with F2 in insert mode.
set pastetoggle=<F2>

" Use <Alt-L> to clear the highlighting of :set hlsearch.
nnoremap <A-l> :syntax sync fromstart<CR>:nohlsearch<CR>:diffupdate<CR>:echo<CR>

" Reloads a buffer.
nnoremap <leader>r :e!<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab.
nnoremap <leader>bq :bp <BAR> bd #<CR>

" Close the current buffer and move to the previous one and close the window
" This replicates the idea of closing a tab.
nnoremap <leader>bw :call DeleteWindowIfNotLast()<CR>

" Remap go to last file with backspace.
nnoremap <BS> <C-^>

"Better window navigation.
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Y yanks from current cursor position to end of line, more logical.
nnoremap Y y$

" Disable Ex mode.
nnoremap Q <nop>

" Change pwd to current file path.
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" Change à (Alt-`) to -> in insert mode.
inoremap <A-`> ->

" Change <Alt-1> to => in insert mode.
inoremap <A-1> =>

" Use <AltGr-Q>(right shift) to save current file.
nnoremap ä :w<CR>
nnoremap <M-w> :w<CR>

" Transpose two chars in insert mode <Alt-s>.
inoremap <M-s> <ESC>Xpa

" Select text inside line.
nnoremap vv ^vg_

" Select from current cursor position to before EOL.
nnoremap <M-v> vg_

" Go to start or end of non-blank line chars.
noremap H ^
noremap L g_
vnoremap L g_

" Swap join lines behaviour.
nnoremap gJ J

" Toggle highlighting the search string.
nnoremap <silent> <F1> :set hlsearch!<cr>

" Execute a macro in visual mode.
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

" Copy the unnamed register to the z register.
nnoremap <silent> <leader>z :let @z=@"<CR>

" Re-select visual block after indenting.
vnoremap < <gv
vnoremap > >gv

" Copy the % register (current file path) to + register (clipboard).
nnoremap <leader>% :let @+=@%<CR>

" map _ to - see :help -.
nnoremap _ -

" Yank non-blank current line.
nnoremap <A-y> mz^yg_`z:delmarks z<cr>

" Cut non-blank current line.
nmap <A-x> mz^xg_`z:delmarks z<cr>

" Split a line.
nnoremap <silent> K i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w:delmarks w<cr>

" Keep the cursor in place while joining lines.
nnoremap <silent> J mzJ`z:delmarks z<cr>

" Expand spaces from (|) to ( | ).
inoremap <M-Space> <Space><Space><Left>

" (|) -> (|.
inoremap <M-BS> <Right><BS>

" Echo syntax group of word under cursor.
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
"--------------------------------End General Mappings--------------------------"
"}}}


"--------------------------------Plugins Configuration-------------------------"{{{
""/ ale.vim {{{
"/
" Don't use the sign column/gutter for ALE.
let g:ale_set_signs = 1
set signcolumn=no

" Lint always in Normal Mode.
let g:ale_lint_on_text_changed = 'normal'

" Set ALE's 200ms delay to zero.
let g:ale_lint_delay = 0

" Set gorgeous colors for marked lines to sane, readable combinations
" working with any colorscheme.
au VimEnter,BufEnter,ColorScheme *
      \ exec "hi! ALEInfoLine
      \ guifg=".(&background=='light'?'#808000':'#ffff00')."
      \ guibg=".(&background=='light'?'#ffff00':'#555500') |
      \ exec "hi! ALEWarningLine
      \ guifg=".(&background=='light'?'#808000':'#ffff00')."
      \ guibg=".(&background=='light'?'#ffff00':'#555500') |
      \ exec "hi! ALEErrorLine
      \ guifg=".(&background=='light'?'#ff0000':'#ff0000')."
      \ guibg=".(&background=='light'?'#ffcccc':'#550000')

let g:ale_echo_msg_format = "%s - %linter%"

"let g:ale_set_quickfix = 1

let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'css': ['stylelint'],
      \}

let g:ale_fixers = {
      \ 'css': ['prettier'],
      \ 'html': ['prettier'],
      \ 'yaml': ['prettier'],
      \ 'javascript': ['prettier'],
      \ 'json': ['prettier'],
      \ 'typescript': ['prettier']
      \ }

let g:ale_fix_on_save = 0

"let g:ale_javascript_prettier_options = '--single-quote --trailing-comma all --no-semi'

" Navigate ALE errors.
nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)
"}}}
""/ close-buffers.vim {{{
"/
" Call close-buffers.vim plugin to list an options menu.
nnoremap <silent> <leader>bd :CloseBuffersMenu<CR>
"}}}
""/ editorconfig/editorconfig-vim {{{
"/
" Don't output 'cursorcolumn'.
let g:EditorConfig_max_line_indicator = "none"
"}}}
""/ fzf.vim {{{
"/

function! s:goto_def(lines) abort
  silent! exe 'e +BTags '.a:lines[0]
  call timer_start(10, {-> execute('startinsert') })
endfunction
function! s:goto_line(lines) abort
  silent! exe 'e '.a:lines[0]
  call timer_start(10, {-> feedkeys(':') })
endfunction

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit',
  \ '@': function('s:goto_def'),
  \ ':': function('s:goto_line')
  \  }

" FZF position.
let g:fzf_layout = { 'window': '-tabnew' }

" Show preview window with "?".
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, 
    \ <bang>0 ? fzf#vim#with_preview('up:60%')
    \         : fzf#vim#with_preview('right:50%:hidden', '?'),
    \ <bang>0)

" Show preview window with "?".
command! -bang -nargs=* Ag 
    \ call fzf#vim#ag(<q-args>, 
    \ '--color-path 400 --color-line-number 400 --color-match 400',
    \ <bang>0 ? fzf#vim#with_preview('up:60%')
    \         : fzf#vim#with_preview('right:50%:hidden', '?'),
    \ <bang>0)

" FZF mappings.
nnoremap <A-t> :Ag<CR><C-\><C-n>0i
nnoremap <A-e> :History<CR><C-\><C-n>0i
nnoremap <A-c> :Snippets<CR><C-\><C-n>0i
nnoremap <A-b> :Buffers<CR><C-\><C-n>0i
nnoremap <Space><Space> :Buffers<CR><C-\><C-n>0i
nnoremap <C-p> :Files<CR><C-\><C-n>0i
"}}}
""/ markdown-preview.nvim {{{
"/
" let g:mkdp_browser = '/usr/bin/qutebrowser'
"}}}
""/ ncm2 {{{
"/
" enable ncm2 for all buffer
"function! s:ncm2_start(...)
"  if v:vim_did_enter
"      call ncm2#enable_for_buffer()
"  endif
"  autocmd BufEnter * call ncm2#enable_for_buffer()
"endfunc

"call timer_start(500, function('s:ncm2_start'))

"" note that must keep noinsert in completeopt, the others is optional
""set completeopt=noinsert,menuone,noselect

""set completeopt=menuone

"au User Ncm2PopupOpen set completeopt=noinsert,menuone,noselect
"au User Ncm2PopupClose set completeopt=menuone

"" supress the annoying 'match x of y', 'The only match' and 'Pattern not
"" found' messages
"set shortmess+=c

"" use a sorter that's more friendly for fuzzy match
"let g:ncm2#sorter = 'abbrfuzzy'
"let g:ncm2#matcher = 'substrfuzzy'

"" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
"inoremap <c-c> <ESC>

"" Conflicts with delimitMate_expand_cr.
"" When the <Enter> key is pressed while the popup menu is visible, it only
"" hides the menu. Use this mapping to close the menu and also start a new
"" line.
"imap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<Plug>(PearTreeExpand)")

"" Use <TAB> to select the popup menu:
"inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
"inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

"" Open the popup menu completion.
"imap <C-Space> <c-r>=ncm2#force_trigger()<cr>

"" Only complete files with . or /
"call ncm2#override_source('bufpath', {'complete_length': -1})
"call ncm2#override_source('rootpath', {'complete_length': -1})

"" Disable current working directory completion.
"call ncm2#override_source('cwdpath', {'complete_length': -1, 'enable': 0})
"}}}
""/ pear-tree {{{
"/
let g:pear_tree_pairs = {
      \ '(': {'closer': ')'},
      \ '[': {'closer': ']'},
      \ '{': {'closer': '}'},
      \ "'": {'closer': "'"},
      \ '"': {'closer': '"'},
      \ '`': {'closer': '`'},
      \ '"""': {'closer': '"""'},
      \ "'''": {'closer': "'''"},
      \ '<!--': {'closer': '-->'},
      \ }

let g:pear_tree_repeatable_expand = 0

imap <C-g><C-g> <Plug>(PearTreeJump)
"imap <Space> <Plug>(PearTreeSpace)
"}}}
""/ Ultisnips.vim {{{
"/

set runtimepath+=~/dotfiles/snips

let g:UltiSnipsExpandTrigger        = "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger   = "<M-j>"
let g:UltiSnipsJumpBackwardTrigger  = "<M-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

" Expand the snippet.
imap <M-u> <Plug>(ultisnips_expand)
vmap <silent> <C-x><C-s> <Plug>(ultisnips_expand)
"}}}
""/ vim-asterisk {{{
"/
map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)

" Enable keepCursor feature.
let g:asterisk#keeppos = 1
"}}}
""/ vim-boxdraw {{{
" The cursor can go nuts.
" augroup setvirtualedit
"   autocmd!
"   autocmd BufLeave *.md setlocal virtualedit-=all
"   autocmd BufEnter *.md setlocal virtualedit+=all
" augroup end
"}}}
""/ vim-cutlass {{{
"/

nnoremap x d
xnoremap x d

nnoremap xx dd
nnoremap X D
"}}}
""/ vim-dirvish {{{
"/

" Put dirs first.
let g:dirvish_mode = ':sort | sort ,^.*[^/]$, r'

" Doesnt work with g:dirvish_mode dirs first.
let g:dirvish_relative_paths = 1

" Set <leader>cd to change directories in dirvish buffers.
augroup dirvish_events
  autocmd!
  autocmd FileType dirvish
        \ nnoremap <buffer> <leader>cd :cd %<CR>:pwd<CR>
  " Unmap <C-P> to use FZF :Files
  autocmd FileType dirvish
        \ silent! unmap <buffer> <C-p>
  autocmd FileType dirvish
        \ nnoremap <nowait><buffer><silent> <M-n> <C-\><C-n>k:call feedkeys("p")<CR>
augroup END
"}}}
""/ vim-easymotion {{{
"/
" Disable default mappings.
let g:EasyMotion_do_mapping=0

" One char search.
nmap <C-Space> <Plug>(easymotion-s)
vmap <C-Space> <Plug>(easymotion-s)
omap <C-Space> <Plug>(easymotion-s)
nmap å <Plug>(easymotion-s)
vmap å <Plug>(easymotion-s)
omap å <Plug>(easymotion-s)

let g:EasyMotion_smartcase = 1

let g:EasyMotion_use_upper = 1

let g:EasyMotion_keys = 'ASDGHKLQWERTYUIOPZXCVBNMFJ;'

" Search last motion used and disable highlight.
let g:EasyMotion_move_highlight = 0
nmap <leader>; <Plug>(easymotion-next)
nmap <leader>, <Plug>(easymotion-prev)
"}}}
""/ vim-highlightedyank {{{
"/
highlight link HighlightedyankRegion ErrorMsg
"}}}
""/ vim-matchup {{{
"/

let g:matchup_matchparen_enabled = 0

" To enable the delete surrounding (ds%) and change surrounding (cs%) maps.
let g:matchup_surround_enabled = 1

let g:matchup_matchparen_status_offscreen = 0

"let g:matchup_matchparen_deferred = 1
"let g:matchup_matchparen_hi_surround_always = 1

nmap <silent> <F7> <plug>(matchup-hi-surround)
"}}}
""/ vim-mundo {{{
"/
" Start plugin.
nnoremap <leader>u :MundoToggle<CR>

" Put preview window below current window.
let g:mundo_preview_bottom = 1

" Automatically close the Mundo windows when reverting.
let g:gundo_close_on_revert = 1

" let g:mundo_auto_preview = 0
"}}}
""/ vim-rsi {{{
"/
" Disable <M-*> mappings.
let g:rsi_no_meta = 1
"}}}
""/ vim-subversive {{{
"/

nmap s <plug>(SubversiveSubstitute)
xmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)
nmap S <plug>(SubversiveSubstituteToEndOfLine)
xmap p <plug>(SubversiveSubstitute)
xmap P <plug>(SubversiveSubstitute)
"}}}
""/ vim-unimpaired {{{
"/
" Go previous or next buffer with <Alt-{j,k}>.
nmap <M-j> <Plug>unimpairedBPrevious
nmap <M-k> <Plug>unimpairedBNext
"}}}
""/ vim-yoink {{{
"/

nmap <leader>n <plug>(YoinkPostPasteSwapBack)
nmap <leader>p <plug>(YoinkPostPasteSwapForward)

nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)

nmap y <plug>(YoinkYankPreserveCursorPosition)
xmap y <plug>(YoinkYankPreserveCursorPosition)

let g:yoinkMoveCursorToEndOfPaste=1
let g:yoinkSavePersistently=1
let g:yoinkIncludeDeleteOperations=1
"}}}
"--------------------------------End Plugins Configuration---------------------"
"}}}


"--------------------------------User Commands---------------------------------"{{{
" :W sudo saves the file.
command! W w !sudo tee % > /dev/null

" :TabMessage command
command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)
"--------------------------------End User Commands-----------------------------"
"}}}


"--------------------------------Auto Commands---------------------------------"{{{
augroup initvim
  au!
  " Return to last edit position when opening files (You want this!).
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif

  " Update the auto read of a file after 4 seconds.
  autocmd CursorHold * silent! checktime

  " Set folding method
  autocmd FileType json setlocal foldmethod=syntax
augroup END
"--------------------------------End Auto Commands-----------------------------"
"}}}


"--------------------------------Functions-------------------------------------"{{{
" Function to pipe an Ex command to a buffer in a new tab.
" Usage :TabMessage command
function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  if empty(message)
    echoerr "no output"
  else
    " use 'new' instead of 'tabnew' below if you prefer split windows instead of tabs
    tabnew
    setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
    silent put=message
  endif
endfunction

" Function to execute a recorded macro over a selected text.
function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

function! DeleteWindowIfNotLast()
  if (winnr('$') > 1 && len(getbufinfo({'buflisted':1})) > 1)
    execute ":bp\<BAR>bd#\<BAR>q"
    return 1
  endif

  echo "Only one window or buffer."
  return 0
endfunction

" Function: display errors from Ale in statusline
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? '' : printf(
    \   ' %dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction
"--------------------------------End Functions---------------------------------"
"}}}


"--------------------------------Colors----------------------------------------"{{{
" Custom Highlight groups.
function! MyHighlights() abort
  highlight MatchParen guibg=NONE
  highlight ErrorMsg gui=reverse guifg=#dc322f guibg=#fdf6e3
  highlight CursorLine guibg=NONE
  " highlight clear Normal
endfunction

augroup MyColors
  autocmd!
  autocmd ColorScheme * call MyHighlights()
augroup END

set background=dark
colorscheme plain
set nohlsearch
"--------------------------------End Colors------------------------------------"
"}}}
" vim: set fdm=marker fmr={{{,}}} fdl=0 :
