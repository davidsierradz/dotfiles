"--------------------------------Plugins---------------------------------------" {{{

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

"----------------Basics----------------- {{{
Plug 'reedes/vim-colors-pencil'

" Enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'

" Readline style insertion.
Plug 'tpope/vim-rsi'

" Move lines or block of lines.
Plug 'matze/vim-move'

" Replace operator for Vim
Plug 'svermeulen/vim-subversive'

" Vim plugin that maintains a yank history to cycle between when pasting.
Plug 'svermeulen/vim-yoink'

" Plugin that adds a 'cut' operation separate from 'delete'.
Plug 'svermeulen/vim-cutlass'

" Super-powered writing things.
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-lexical'

"}}}

"--------------Interface---------------- {{{
" Search your selection text with * or #.
Plug 'haya14busa/vim-asterisk'

" Make the yanked region apparent.
Plug 'machakann/vim-highlightedyank'

Plug 'junegunn/goyo.vim'
"}}}

"-------------Integrations-------------- {{{
Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/notes/',
                    \ 'syntax': 'markdown', 'ext': '.md'}]

let g:vimwiki_global_ext = 0
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
let g:mkdp_browser = '/usr/bin/qutebrowser'
"}}}

"-------Completions and omnifuncs------- {{{
"}}}

"------Syntax files and Languages------- {{{
"}}}

" Initialize plugin system
call plug#end()

"--------------------------------End Plugins-----------------------------------"
"}}}




"--------------------------------General---------------------------------------"{{{
" Settings for tabs and space indents.
set tabstop=4
set shiftwidth=4
let &softtabstop =&shiftwidth
set expandtab

" Leave hidden buffers open.
set hidden

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
"--------------------------------End General-----------------------------------"
"}}}




"--------------------------------Visuals---------------------------------------"{{{
colorscheme pencil

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

" Keep the cursor in place while joining lines
nnoremap <silent> J mzJ`z:delmarks z<cr>

"--------------------------------End General Mappings--------------------------"
"}}}




"--------------------------------Plugins Configuration-------------------------"{{{
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
""/ Pencil {{{
"/
" Start pencil on vimwiki buffers.
augroup pencil
    autocmd!
    autocmd filetype vimwiki call pencil#init()
                \ | call lexical#init()
                \ | setl spell spl=es fdl=4 noru nonu nornu
                \ | setl dictionary=/usr/share/dict/words
                \ | setl fdo+=search
augroup END

let g:pencil#wrapModeDefault = 'soft'
let g:pencil#textwidth = 74
let g:pencil#joinspaces = 0
let g:pencil#cursorwrap = 1
let g:pencil#conceallevel = 3
let g:pencil#concealcursor = 'c'
let g:pencil#softDetectSample = 20
let g:pencil#softDetectThreshold = 130
"}}}
""/ Goyo {{{
"/
" Open Goyo.
nnoremap <F5> :Goyo<CR>
"}}}
""/ vim-unimpaired {{{
"/
" Go previous or next buffer with <Alt-{j,k}>.
nmap <M-j> <Plug>unimpairedBPrevious
nmap <M-k> <Plug>unimpairedBNext
"}}}
""/ close-buffers.vim {{{
"/
" Call close-buffers.vim plugin to list an options menu.
nnoremap <silent> <leader>bd :CloseBuffersMenu<CR>
"}}}
""/ vim-move {{{
"/
let g:move_key_modifier = 'C-M'
"}}}
"--------------------------------End Plugins Configuration---------------------"
"}}}




"--------------------------------User Commands---------------------------------"{{{
" :W sudo saves the file.
command W w !sudo tee % > /dev/null

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

" Only shown when not in insert mode so I don't go insane.
augroup trailing
    au!
    au InsertEnter * :set listchars-=trail:·
    au InsertLeave * :set listchars+=trail:·
augroup END

" Update the auto read of a file after 4 seconds.
augroup autoRead
    autocmd!
    autocmd CursorHold * silent! checktime
augroup END
"--------------------------------End Auto Commands-----------------------------"
"}}}




"--------------------------------Macros----------------------------------------"{{{
"--------------------------------End Macros------------------------------------"
"}}}




"--------------------------------Functions-------------------------------------"{{{
function DeleteWindowIfNotLast()
    if (winnr('$') > 1 && len(getbufinfo({'buflisted':1})) > 1)
        execute ":bp\<BAR>bd#\<BAR>q"
        return 1
    endif

    echo "Only one window or buffer."
    return 0
endfunction

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
"--------------------------------End Functions---------------------------------"
"}}}




"--------------------------------Terminal Only---------------------------------"{{{
"--------------------------------End Terminal Only-----------------------------"
"}}}




"--------------------------------PHP Debug-------------------------------------"{{{


"--------------------------------End PHP Debug---------------------------------"
"}}}




"--------------------------------Tips and Remainders---------------------------"{{{
"--------------------------------End Tips and Remainders-----------------------"
"}}}
" vim: set fdm=marker fmr={{{,}}} :
