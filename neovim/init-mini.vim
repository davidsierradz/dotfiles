"--------------------------------Plugins---------------------------------------" {{{
" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

"----------------Basics----------------- {{{
" Using this until the unlisted netrw buffer bug is solved.
Plug 'justinmk/vim-dirvish'

" Allows you to configure % to match more than just single characters.
Plug 'andymass/vim-matchup'
let g:loaded_matchit = 1

" Visualize your Vim undo tree.
Plug 'sjl/gundo.vim'

" Automatic closing of quotes, parenthesis, brackets
" also expands spaces and enters.
Plug 'Raimondi/delimitMate'

" Change or add pair of chars surrouding an object.
Plug 'tpope/vim-surround'

" Vim plugin that provides additional text objects.
Plug 'wellle/targets.vim'

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

" Extended f, F, t and T key mappings.
Plug 'rhysd/clever-f.vim'
"}}}

"--------------Interface---------------- {{{
" Solarized colorscheme for NeoVim.
Plug 'lifepillar/vim-solarized8'

Plug 'itchyny/lightline.vim'

" Smart close of buffers.
Plug 'Asheq/close-buffers.vim'

" Search your selection text with * or #.
Plug 'haya14busa/vim-asterisk'

" Make the yanked region apparent.
Plug 'machakann/vim-highlightedyank'

" Persist folds in sessions.
Plug 'zhimsel/vim-stay'
"}}}

"-------------Integrations-------------- {{{
" Use .editorconfig file.
"Plug 'editorconfig/editorconfig-vim'

" FZF.
" Already installed on Manjaro-i3.
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
"}}}

"-------Completions and omnifuncs------- {{{
" Snippet Engine.
Plug 'SirVer/ultisnips'

" List of snippets for Ultisnips.
Plug 'honza/vim-snippets'

" Syntax checker and linter.
Plug 'w0rp/ale'

" Intellisense Engine
"Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
"}}}

"------Syntax files and Languages------- {{{
" Yet Another JavaScript Syntax for Vim.
Plug 'othree/yajs.vim'

" React JSX syntax highlighting and indenting for vim.
Plug 'mxw/vim-jsx'
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

" Becouse we have a status bar disable showing if we are in insert mode in the
" Command line bar.
set noshowmode

" Command-Line options.
set wildignorecase
set wildmode=list:longest,full

"Ignore case for completion in insert mode.
set infercase

" Stop certain movements from always going to the first character of a line.
set nostartofline

" Raise a dialog instead of failing a command.
set confirm

" Make ~ an operator.
set tildeop

" Only save folds and cursor position with :mksession.
set viewoptions=cursor,folds

" Round indenting with < and > to shiftwidth.
set shiftround

" Select with the mouse.
set mouse=a

" Sync clipboard with +.
set clipboard=unnamedplus
"--------------------------------End General-----------------------------------"
"}}}




"--------------------------------Visuals---------------------------------------"{{{
colorscheme solarized8
let g:solarized_extra_hi_groups = 1

" Disable text wrap.
set nowrap

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

" Shortcut to toogle showing spaces and tabs.
nnoremap <M-F12> :set listchars=tab:\ \ ,eol:₋,extends:⟩,precedes:⟨,trail:·<CR>
nnoremap <C-F12> :set listchars=tab:→\ ,eol:₋,extends:⟩,precedes:⟨,trail:·<CR>
nnoremap <F12> :set listchars=tab:→\ ,eol:₋,extends:⟩,precedes:⟨,trail:·,space:·<CR>
nnoremap <S-F12> :set list!<CR>

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

" Toggle Relative number.
nmap <silent> <leader>rn :set relativenumber!<CR>

" Disable Ex mode.
nnoremap Q <nop>

" Change pwd to current file path.
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" Change wrap setting.
nnoremap <leader>cw :set wrap!<CR>

" Change à (Alt-`) to -> in insert mode.
inoremap <A-`> ->

" Change <Alt-1> to => in insert mode.
inoremap <A-1> =>

" Use <AltGr-Q>(right shift) to save current file.
nnoremap ä :w<CR>

" Select text inside line.
nnoremap vv ^vg_

" Select from current cursor position to before EOL.
nnoremap <M-v> vg_

" Go to start or end of non-blank line chars.
noremap H ^
noremap L g_
vnoremap L g_

" Split a line.
nnoremap <silent> K i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w:delmarks w<cr>

" Keep the cursor in place while joining lines
nnoremap <silent> J mzJ`z:delmarks z<cr>

" Swap join lines behaviour.
nnoremap gJ J

" Yank non-blank current line.
nnoremap <A-y> mz^yg_`z:delmarks z<cr>

" Cut non-blank current line.
nmap <A-x> mz^xg_`z:delmarks z<cr>

" Toggle highlighting the search string.
nnoremap <silent> <F1> :set hlsearch!<cr>

" Go previous or next buffer with <Alt-{j,k}>.
nmap <M-j> <Plug>unimpairedBPrevious
nmap <M-k> <Plug>unimpairedBNext

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
"--------------------------------End General Mappings--------------------------"
"}}}




"--------------------------------Plugins Configuration-------------------------"{{{
"/ Gundo.vim {{{
"/

" Start plugin.
nnoremap <leader>u :GundoToggle<CR>

" Put preview window below current window.
let g:gundo_preview_bottom = 1

" Disable help.
let g:gundo_help = 0

let g:gundo_close_on_revert = 1
"}}}
"/ delimitMate {{{
"/
let delimitMate_expand_cr = 1

let delimitMate_jump_expansion = 1
"}}}
""/ Ultisnips.vim {{{
"/

set runtimepath+=~/dotfiles/snips

let g:UltiSnipsExpandTrigger        = "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger   = "<M-j>"
let g:UltiSnipsJumpBackwardTrigger  = "<M-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

" Expand the snippet.
inoremap <silent> <expr> <C-x><C-s> ncm2_ultisnips#expand_or("\<CR>", 'n')
imap <C-u> <Plug>(ultisnips_expand)
vmap <silent> <C-x><C-s> <Plug>(ultisnips_expand)
"}}}
""/ vim-dirvish {{{
"/

" Put dirs first.
let g:dirvish_mode = ':sort ,^.*[\/],'

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
""/ vim-highlightedyank {{{
"/

highlight link HighlightedyankRegion ErrorMsg
"}}}
""/ vim-matchup {{{
"/

" To enable the delete surrounding (ds%) and change surrounding (cs%) maps.
let g:matchup_surround_enabled = 1

let g:matchup_matchparen_status_offscreen = 0

autocmd Filetype javascript.jsx setlocal matchpairs=(:),{:},[:],<:>
autocmd Filetype javascript.jsx let b:match_words = '<\@<=\([^/][^ \t>]*\)\g{hlend}[^>]*\%(/\@<!>\|$\):<\@<=/\1>'

nmap <silent> <F7> <plug>(matchup-hi-surround)
"}}}
""/ fzf.vim {{{
"/

" FZF position.
let g:fzf_layout = { 'window': '-tabnew' }

" FZF mappings.
nnoremap <A-n> :Lines<CR><C-\><C-n>0i
nnoremap <A-b> :BTags<CR><C-\><C-n>0i
nnoremap <A-t> :Ag<CR><C-\><C-n>0i
"nnoremap <A-r> :Tags<CR><C-\><C-n>0i
nnoremap <A-e> :History<CR><C-\><C-n>0i
nnoremap <A-c> :Snippets<CR><C-\><C-n>0i
nnoremap ; :Buffers<CR><C-\><C-n>0i
nnoremap <C-p> :Files<CR><C-\><C-n>0i
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
""/ targets.vim {{{
"/

"Controls the keys used in maps for seeking next and last text objects.
let g:targets_nl = 'nN'
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
""/ vim-cutlass {{{
"/

nnoremap x d
xnoremap x d

nnoremap xx dd
nnoremap X D
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
""/ close-buffers.vim {{{
"/
" Call close-buffers.vim plugin to list an options menu.
nnoremap <silent> <leader>bd :CloseBuffersMenu<CR>
"}}}
""/ ale.vim {{{
"/
" Don't use the sign column/gutter for ALE.
let g:ale_set_signs = 0

" Lint always in Normal Mode.
let g:ale_lint_on_text_changed = 'normal'

" Lint when leaving Insert Mode but don't lint when in Insert Mode.
let g:ale_lint_on_insert_leave = 1

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

let g:ale_set_quickfix = 1

let g:ale_linters = {
            \ 'javascript': ['eslint'],
            \ 'css': ['stylelint'],
            \}

let g:ale_fixers = {
            \ 'javascript': ['prettier'],
            \ 'json': ['prettier'],
            \ 'typescript': ['prettier']
            \ }

let g:ale_fix_on_save = 1

let g:ale_javascript_prettier_options = '--single-quote --trailing-comma all'
"}}}
""/ lightline.vim {{{
"/
let g:lightline = {
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'readonly', 'relativepath', 'modified' ] ]
            \ },
            \ }
"}}}
""/ clever-f.vim {{{
"/
" Search a character only in current line.
let g:clever_f_across_no_line = 1

" Smart case.
let g:clever_f_smart_case = 1

" Show a prompt.
let g:clever_f_show_prompt = 1

" Fix the direction of f and F.
let g:clever_f_fix_key_direction = 1

" Repeat previous search.
nmap <A-f> <Plug>(clever-f-repeat-forward)
nmap <A-S-f> <Plug>(clever-f-repeat-back)
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
" Return to last edit position when opening files (You want this!).
augroup line_return
    au!
    au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \     execute 'normal! g`"zvzz' |
                \ endif
augroup END

" Update the auto read of a file after 4 seconds.
augroup autoRead
    autocmd!
    autocmd CursorHold * silent! checktime
augroup END

" Set folding method
autocmd FileType json setlocal foldmethod=syntax
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
        " use "new" instead of "tabnew" below if you prefer split windows instead of tabs
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

" For Lisp.
function! NestExpression()
    " Get end paren pos
    " Returns [0, 0] if not in parens.
    let save_cursor = getpos('.')

    " If line not set to zero, append
    let end_paren_pos = searchpairpos('(', '', ')')
    if end_paren_pos[0] > 0
        execute "normal! a)"
    else
        " We're not in a set of parentheses
        return
    endif

    " Return to the inside of the parentheses
    call setpos('.', save_cursor)

    " If line not set to zero, start insert
    " mode, prepend and move cursor left
    let end_paren_pos = searchpairpos('(', '', ')', 'b')
    if end_paren_pos[0] > 0
        call feedkeys("i( \<LEFT>")
    endif
endfunction

nmap <Leader>fj :call NestExpression()<cr>
"--------------------------------End Functions---------------------------------"
"}}}
" vim: set fdm=marker fmr={{{,}}} :
