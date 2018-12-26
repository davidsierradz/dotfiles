"--------------------------------Plugins---------------------------------------" {{{

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

"----------------Basics-----------------
" Highlights the XML/HTML tags that enclose your cursor location.
"Plug 'Valloric/MatchTagAlways'

" Using this until the unlisted netrw buffer bug is solved.
Plug 'justinmk/vim-dirvish'

" Allows you to configure % to match more than just single characters.
"Plug 'benjifisher/matchit.zip'
"Plug 'chrisbra/matchit'
Plug 'andymass/vim-matchup'
let g:loaded_matchit = 1

" Functions for toggle comments.
Plug 'scrooloose/nerdcommenter'

" Jump anywhere in current screen.
Plug 'easymotion/vim-easymotion'

" Pasting in Vim with indentation adjusted to destination context.
"Plug 'sickill/vim-pasta'

" Check the " and @ registers.
Plug 'junegunn/vim-peekaboo'

" Add colons and semicolons in insert mode.
Plug 'lfilho/cosco.vim'

" Visualize your Vim undo tree.
Plug 'sjl/gundo.vim'

" Autoclose XML-like tags.
Plug 'alvan/vim-closetag'

" Automatic closing of quotes, parenthesis, brackets
" also expands spaces and enters.
Plug 'Raimondi/delimitMate'

" Change or add pair of chars surrouding an object.
Plug 'tpope/vim-surround'

" Browse tags of current file.
Plug 'majutsushi/tagbar'

" Set the pwd smartly.
Plug 'airblade/vim-rooter'

" Extended f, F, t and T key mappings.
Plug 'rhysd/clever-f.vim'

" Vim plugin that provides additional text objects.
Plug 'wellle/targets.vim'

" Enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'

" Pairs of handy bracket mappings.
Plug 'tpope/vim-unimpaired'

" Easy text exchange operator.
Plug 'tommcdo/vim-exchange'

" PascalCase word motions.
Plug 'chaoren/vim-wordmotion'

" Vim HardTime.
Plug 'takac/vim-hardtime'

" Readline style insertion.
Plug 'tpope/vim-rsi'

" Move lines or block of lines.
Plug 'matze/vim-move'

" Replace operator for Vim
Plug 'romgrk/replace.vim'

"--------------Interface----------------
" Solarized colorscheme for NeoVim.
Plug 'lifepillar/vim-solarized8'

" Better statusline.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Nerdfont icons for Vim.
Plug 'ryanoasis/vim-devicons'

" Add git indications to sign sidebar.
Plug 'airblade/vim-gitgutter'

" Swap windows without ruining your layout.
Plug 'wesQ3/vim-windowswap'

" Toggle the space of current window.
Plug 'szw/vim-maximizer'

" Smart close of buffers.
Plug 'Asheq/close-buffers.vim'

" Start buffer for vim.
Plug 'mhinz/vim-startify'

" Search your selection text with * or #.
Plug 'haya14busa/vim-asterisk'

" Manage marks.
Plug 'kshenoy/vim-signature'
let g:SignatureMarkTextHLDynamic=1
" Make the yanked region apparent.
Plug 'machakann/vim-highlightedyank'

" Persist folds in sessions.
Plug 'zhimsel/vim-stay'

"-------------Integrations--------------
" Front for Ag.
Plug 'mileszs/ack.vim'

" Use .editorconfig file.
Plug 'editorconfig/editorconfig-vim'

" DBGP client for Xdebug.
Plug 'joonty/vdebug'

" FZF.
" Already installed on Manjaro-i3.
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive'

"-------Completions and omnifuncs-------
" Autocompletion framework.
Plug 'ncm2/ncm2'
" ncm2 requires nvim-yarp
Plug 'roxma/nvim-yarp'
" Some completions
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-ultisnips'
Plug 'ncm2/ncm2-cssomni'
Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
Plug 'ncm2/ncm2-html-subscope'
Plug 'fgrsnau/ncm2-otherbuf', { 'branch': 'ncm2' }
" Limit ncm2 popup the matches of the
" source with highest priority only
"Plug 'ncm2/ncm2-highprio-pop'

" CSS omnifunc.
Plug 'othree/csscomplete.vim'

" PHP implementation of Microsoft LSP (Language Server Protocol).
Plug 'autozimu/LanguageClient-neovim', { 'do': 'bash install.sh', 'branch': 'next' }
Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}

" Snippet Engine.
Plug 'SirVer/ultisnips'

" List of snippets for Ultisnips.
Plug 'honza/vim-snippets'

" Syntax checker and linter.
Plug 'w0rp/ale'

" Expand html tags.
Plug 'mattn/emmet-vim'

"------Syntax files and Languages-------
" Insert and sort use statements in PHP.
Plug 'arnaud-lb/vim-php-namespace'

" Language pack for vim.
Plug 'sheerun/vim-polyglot'

" Upstream indenting for PHP.
Plug '2072/PHP-Indenting-for-VIm', {'for': 'php'}

" Updated CSS syntax files.
Plug 'hail2u/vim-css3-syntax'

" Set the 'path' option for miscellaneous file types.
Plug 'tpope/vim-apathy'

Plug 'Quramy/vim-js-pretty-template'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"------------Standby plugins------------
"Plug 'jsfaint/gen_tags.vim'
"Plug 'lvht/phpcd.vim'
"Plug 'blueyed/vim-diminactive'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'jelera/vim-javascript-syntax'
"Plug 'othree/javascript-libraries-syntax.vim'
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'artnez/vim-wipeout'
"Plug 'tyru/restart.vim'
"Plug 'FelikZ/ctrlp-py-matcher'
"Plug 'Yggdroot/indentLine'
"Plug 'leafgarland/typescript-vim'
"Plug 'elzr/vim-json'
"Plug 'jwalton512/vim-blade'
"Plug 'junegunn/vader.vim'
"Plug 'manasthakur/vim-vinegar'
"Plug 'chrisbra/NrrwRgn'

" Slow.
"Plug 'othree/yajs.vim'
"Plug 'othree/javascript-libraries-syntax.vim'
"Plug 'othree/es.next.syntax.vim'
"let g:used_javascript_libs = 'jquery,vue'

" Initialize plugin system
call plug#end()

"--------------------------------End Plugins-----------------------------------"
"}}}




"--------------------------------General---------------------------------------"{{{

" This command switches on syntax highlighting.
"syntax enable

" Indenting configurations.
set autoindent
set smartindent

" Settings for tabs and space indents.
"set tabstop=4 softtabstop=0 shiftwidth=4 smarttab expandtab
set tabstop=4
set shiftwidth=4
let &softtabstop =&shiftwidth
set expandtab
set smarttab

set encoding=utf-8

" Show partial commands.
set showcmd

" After 250 milliseconds write the buffer to the swap file.
set updatetime=250

" Leave hidden buffers open.
set hidden

"by default Vim saves your last 8 commands.  We can handle more.
set history=1000

" Look up recurively for ctags file.
"set tags+=tags;/

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

" Set the height of the command line window.
set cmdwinheight=2

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

" Show special characters.
set list

" Set the special characters default.
"set listchars=tab:\ \ ,eol:₋,extends:>,precedes:<,trail:
set listchars=tab:→\ ,trail:·,eol:₋,extends:⟩,precedes:⟨

" Show line numbers.
set number

" Relative positions for line numbers.
set relativenumber

set background=dark
colorscheme solarized8
let g:solarized_extra_hi_groups = 1

" Hide the background of the special characters in terminal.
highlight SpecialKey cterm=standout ctermfg=3 ctermbg=NONE

"highlight VertSplit cterm=reverse

" Put a red underline in search mode.
"highlight Search cterm=underline ctermfg=9
"highlight IncSearch cterm=underline

" Color for the terminal column width ruler.
"highlight ColorColumn ctermbg=magenta

" Text width ruler.
"set colorcolumn=81

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

" Enable true color support
set termguicolors

" Set the sign column to always stay.
set signcolumn=yes

" Live substitution
set inccommand=nosplit

" Put ↪ on wrapped lines.
"set showbreak=↪

" Break words if the wrap option is set.
set nolinebreak

" Indent a wrapped line.
set breakindent

" Disable two spaces in join commands.
set nojoinspaces

"--------------------------------End Visuals-----------------------------------"
"}}}




"--------------------------------Search----------------------------------------"{{{

" Search options
set incsearch
set hlsearch
set ignorecase
set smartcase

" Use global in substitution per default.
set gdefault

" Put line numbers in Netrw windows.
"let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" The Silver Searcher.
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

"--------------------------------End Search------------------------------------"
"}}}




"--------------------------------Splits----------------------------------------"{{{

" Splitting to the right by default.
set splitright

" Using p in netrw will open a vertical split to preview the file.
" Use P to reuse last visited buffer to open current file under cursor.
let g:netrw_preview = 1

"--------------------------------End Splits------------------------------------"
"}}}




"--------------------------------General Mappings------------------------------"{{{

" Use j and k in wrap lines.
"nnoremap j gj
"nnoremap k gk
"nnoremap gj j
"nnoremap gk k

" Use j and k in wrap lines unless preceded by a count.
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

" Shortcut to toogle showing spaces and tabs.
nnoremap <M-F12> :set listchars=tab:\ \ ,eol:₋,extends:⟩,precedes:⟨,trail:·<CR>
nnoremap <C-F12> :set listchars=tab:→\ ,eol:₋,extends:⟩,precedes:⟨,trail:·<CR>
nnoremap <F12> :set listchars=tab:→\ ,eol:₋,extends:⟩,precedes:⟨,trail:·,space:·<CR>
nnoremap <S-F12> :set list!<CR>

" Regenerate ctags file.
nnoremap <leader>rc :!ctags .<CR>

" Search tag.
nnoremap <leader>ft :tag<space>

" saves from normal mode.
nnoremap <leader>w :w<cr>

" Saves without sudo.
cmap w!! w !sudo tee > /dev/null %

" Open a file from + register and place cursor to input the line number.
cmap ee e +<C-R>* <C-R>+<CR>

" List contents of all registers (that typically contain pasteable text).
"nnoremap <silent> "" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>

" Open Netrw file explorer in Present Working Directory with <Alt-W>.
"nnoremap <silent> ÷ :e.<CR>

" Toggle paste mode with F2 in insert mode.
set pastetoggle=<F2>

" Clear the search highlight with <leader><space>.
"nnoremap <leader><space> :nohlsearch<CR>

" Clear the search highlight with <Alt-L>.
"nnoremap ì :nohlsearch<CR>

" Use <Alt-L> to clear the highlighting of :set hlsearch.
nnoremap <silent> <A-l> :syntax sync fromstart<CR>:nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR>ì

" Reloads a buffer.
"nnoremap <leader>r :w<CR>:e<CR>
nnoremap <leader>r :e!<CR>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
" Using <Nul> as <C-Space> because in gnome-terminal thats a null character.
"nnoremap <Space> /
"nnoremap <Nul> ?

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Buffers shortcuts.
"nnoremap <silent> [b :bprevious<CR>
"nnoremap <silent> ]b :bnext<CR>
"nnoremap <silent> [B :bfirst<CR>
"nnoremap <silent> ]B :blast<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab.
nnoremap <leader>bq :bp <BAR> bd #<CR>

" Close the current buffer and move to the previous one and close the window
" This replicates the idea of closing a tab.
nnoremap <leader>bw :call DeleteWindowIfNotLast()<CR>

function DeleteWindowIfNotLast()
    if (winnr('$') > 1 && len(getbufinfo({'buflisted':1})) > 1)
        execute ":bp\<BAR>bd#\<BAR>q"
        return 1
    endif

    echo "Only one window or buffer."
    return 0
endfunction

" Call vim-wipeout plugin to delete all buffers not open.
"nnoremap <leader>bd :Wipeout<CR>
nnoremap <silent> <leader>bd :CloseBuffers<CR>

" Remap go to last file with backspace.
nnoremap <BS> <C-^>

"Better window navigation.
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Put the Ack! command to not open first ocurrence of search.
nnoremap <leader>fa :Ack!<Space>'

" Swap semicolon for colon ;<->: in normal mode.
"nnoremap ; :
"nnoremap : ;

" Enter 2 spaces with Ctrl-Tab.
"inoremap <C-Tab> <Space><Space>

" Y yanks from current cursor position to end of line, more logical.
nnoremap Y y$

" Make Ctrl-e jump to the end of the current line in the insert mode.
"inoremap <C-e> <C-o>$

" Toggle Relative number.
nmap <silent> <leader>rn :set relativenumber!<CR>

" Highlight last inserted text.
nnoremap gV `[v`]

" Disable Ex mode.
nnoremap Q <nop>

" Change pwd locally to current file path.
nnoremap <leader>cd :lcd %:p:h<CR>:pwd<CR>

" Toogle tagbar.vim plugin.
"nmap <F8> :TagbarToggle<CR>
nmap <F8> :TagbarOpenAutoClose<CR>

" Close the preview window. (Better use Ctrl-W z, already in vim)
"nnoremap <leader>q :pc<CR>

" Change wrap setting.
nnoremap <leader>cw :set wrap!<CR>

" Change à (Alt-`) to -> in insert mode.
inoremap <A-`> ->

" Change <Alt-1> to => in insert mode.
inoremap <A-1> =>

inoremap <A-2> <

" Use <Alt-Shift-Tab> to expand a space: <Space>|<Space>.
inoremap <A-S-Tab> <Space><Space><Left>

" Use <AltGr-Q> to save current file.
nnoremap ä :w<CR>

" Lint a php file.
nnoremap <leader>lp :!php -l %<CR>

" Delete without yanking, send the deleted content to the 'black hole'
" register.
nnoremap <M-d> "_d
nnoremap <Leader>d "_d
vnoremap <M-d> "_d
vnoremap <Leader>d "_d

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

" Split a line.
nnoremap <silent> K i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w:delmarks w<cr>

" Keep the cursor in place while joining lines
nnoremap <silent> J mzJ`z:delmarks z<cr>

" Swap join lines behaviour.
nnoremap gJ J

" Yank non-blank current line.
nnoremap <A-y> mz^yg_`z:delmarks z<cr>

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

"--------------------------------End General Mappings--------------------------"
"}}}




"--------------------------------Plugins Configuration-------------------------"{{{

"/
"/ Vim Airline
"/

" Airline theme.
let g:airline_theme = 'solarized'
let g:airline_solarized_bg='dark'
let g:airline_solarized_dark_text = 1

" SHow all airline things in the focus window only.
let g:airline_inactive_collapse=1

" Airline auto populate powerline fonts.
let g:airline_powerline_fonts=1

" Set airline separators.
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

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

let g:airline#extensions#tagbar#flags = 'f'

" Disable git-gutter changed hunks.
"let g:airline#extensions#hunks#enabled = 0

" Enable the Ale integration.
let g:airline#extensions#ale#enabled = 1

" Add w modifier to search from 'cwd'.
"let g:ctrlp_working_path_mode = 'a'

"/
"/ MatchTagAlways
"/

"let g:mta_use_matchparen_group = 1
"
"" Enabled files for the plugin.
"let g:mta_filetypes = {
"    \ 'html' : 1,
"    \ 'xhtml' : 1,
"    \ 'xml' : 1,
"    \ 'jinja' : 1,
"    \ 'php' : 1,
"    \ 'vue' : 1,
"    \ 'javascript.jsx' : 1,
"    \}

"/
"/ Ack.vim
"/

" Using ack.vim with Ag because of deprecation of ag.vim.
let g:ackprg = 'ag --vimgrep --path-to-ignore ~/dotfiles/ag/.agignore --skip-vcs-ignores --hidden'

"/
"/ Vim EasyMotion
"/

" Use spacebar to start easymotion.
nmap <C-Space> <Plug>(easymotion-prefix)

" One char search.
nmap <Space> <Plug>(easymotion-s)
vmap <Space> <Plug>(easymotion-s)
"nmap <C-Space> <Plug>(easymotion-sn)

let g:EasyMotion_smartcase = 1

let g:EasyMotion_use_upper = 1

"let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'
let g:EasyMotion_keys = 'ASDGHKLQWERTYUIOPZXCVBNMFJ;'

" Search last motion used and disable highlight.
let g:EasyMotion_move_highlight = 0
nmap <leader>; <Plug>(easymotion-next)
nmap <leader>, <Plug>(easymotion-prev)

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
nnoremap <silent>å :MaximizerToggle<CR>
vnoremap <silent>å :MaximizerToggle<CR>gv
inoremap <silent>å <C-o>:MaximizerToggle<CR>

"/
"/ delimitMate
"/

let delimitMate_expand_cr = 1

" Disable automatic close on angle brackets <> in html and blade files (already using vim-closetag).
au FileType html,blade,vue,php,javascript.jsx let b:delimitMate_matchpairs = "(:),[:],{:}"

" Expand spaces in blade files.
"au FileType blade,vue,html.vue let b:delimitMate_expand_space = 1
au FileType html,php,javascript.jsx,css,vue let b:delimitMate_expand_space = 1

let delimitMate_jump_expansion = 1

"/
"/ vim-closetag
"/

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.blade.php,*.vue,*.php,*.js"

" Self-close non-closing tags.
let g:closetag_xhtml_filetypes = "xhtml,javascript.jsx,xml,vue"

" Add > at current position without closing the current tag, default is ''.
let g:closetag_close_shortcut = '<leader>>'

"/
"/ indentLine
"/

"let g:indentLine_enabled = 0
"let g:indentLine_char = '┊'
"let g:indentLine_color_gui = '#657B83'

" indentLine will disable quotes in JSON files, install json plugin for fix.
"let g:vim_json_syntax_conceal = 0

"/
"/ Javascript Libraries Syntax
"/

"let g:used_javascript_libs = 'jquery,underscore,backbone,angularjs,react,handlebars'
"autocmd BufReadPre *.hbs set filetype=javascript

"/
"/ vim-gutentags
"/

"let g:gutentags_cache_dir = '~/.vim/gutentags'

"let g:gutentags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
"                            \ '*.phar', '*.ini', '*.rst', '*.md',
"                            \ '*vendor/*/test*', '*vendor/*/Test*',
"                            \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
"                            \ '*var/cache*', '*var/log*']

"/
"/ vdebug.vim
"/

" General Options.
let g:vdebug_options = {}
let g:vdebug_features = {}
let g:vdebug_options["break_on_open"] = 0
let g:vdebug_options["port"] = 9100
let g:vdebug_options["server"] = ''

" Cross paths for projects.
let g:vdebug_options["path_maps"] = {
            \    "/home/vagrant/Code/php-mini-framework": "/home/neuromante/Code/php-mini-framework",
            \}

"let g:vdebug_features['max_depth'] = 6
let g:vdebug_features['max_children'] = 256
let g:vdebug_features['max_data'] = 2048

"/
""/ vim-polyglot
"/

"let g:polyglot_disabled = ['css', 'php', 'javascript']

"/
""/ vim-startify
"/

let g:startify_custom_header = []

let g:startify_bookmarks = [ '~/dotfiles/', '~/code/', '~/Vagrant/' ]

let g:startify_list_order = ['bookmarks', 'sessions', 'files']

let g:startify_session_before_save = [
            \ 'echo "Cleaning up before saving.."',
            \ 'silent! Wipeout'
            \ ]

let g:startify_change_to_vcs_root = 1

let g:startify_files_number = 20

""/
"""/ vim-php-wrapper
""/
"
""nnoremap <buffer> <silent> <Leader>dk :call VphpwDocClosestMethod(0)<CR>
""nnoremap <buffer> <silent> <Leader>dj :call VphpwDocClosestMethod(1)<CR>
""noremap  <buffer> <silent> <Leader>dl :call VphpwAlignDocblock()<CR>
""nnoremap <buffer> <silent> <Leader>dd :call
""            \ VphpwDeleteEnclosingDocblock()<CR>
""noremap  <buffer> <silent> <Leader>dr :call VphpwResetDocblock()<CR>

"/
""/ ale.vim
"/

" Use php linters for CSS and JS files.
"let g:ale_linter_aliases = {
"            \ 'css': ['css', 'php'],
"            \ 'javascript': ['javascript', 'php'],
"            \}

let g:ale_echo_msg_format = "%s - %linter%"
let g:ale_set_quickfix = 1

let g:ale_php_phpcs_use_global = 1

"let g:ale_php_phpcs_standard = "WordPress-Extra"

let g:ale_linters = {
            \ 'php': ['php', 'phpcs', 'phpmd', 'phpstan'],
            \ 'javascript': ['eslint', 'flow'],
            \ 'css': ['stylelint'],
            \}

let g:ale_php_phpcs_standard = "PSR2"

let g:ale_php_phpstan_executable = 'vendor/bin/phpstan'
let g:ale_php_phpstan_configuration = 'phpstan.neon'
let g:ale_php_phpstan_level = '4'

let g:ale_php_phpmd_executable = 'vendor/bin/phpmd'

let g:ale_fixers = {
            \ 'javascript': ['prettier'],
            \ 'json': ['prettier']
            \ }

let g:ale_fix_on_save = 1

let g:ale_javascript_prettier_options = '--single-quote --trailing-comma all'
"let g:ale_javascript_prettier_options = '--single-quote --no-semi --trailing-comma es5'

"/
""/ rooter.vim
"/

let g:rooter_manual_only = 1

"/
""/ vim-php-namespace
"/

let g:php_namespace_sort = "'{,'}-1!awk '{print length, $0}' | sort -n -s | cut -d' ' -f2-"
let g:php_namespace_sort_after_insert = 1

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction

autocmd FileType php inoremap <buffer> <Leader>sd <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <buffer> <Leader>sd :call PhpInsertUse()<CR>

autocmd FileType php inoremap <buffer> <Leader>sf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <buffer> <Leader>sf :call PhpExpandClass()<CR>

autocmd FileType php inoremap <buffer> <Leader>ss <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <buffer> <Leader>ss :call PhpSortUse()<CR>

"/
""/ ncm2
"/

" enable ncm2 for all buffer
"autocmd BufEnter * call ncm2#enable_for_buffer()
"autocmd InsertEnter * call ncm2#enable_for_buffer()

function s:ncm2_start(...)
    if v:vim_did_enter
        call ncm2#enable_for_buffer()
    endif
    autocmd BufEnter * call ncm2#enable_for_buffer()
endfunc

call timer_start(500, function('s:ncm2_start'))

" note that must keep noinsert in completeopt, the others is optional
set completeopt=noinsert,menuone,noselect

" supress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c

"au TextChangedI * call ncm2#auto_trigger()

let g:ncm2#matcher = 'substrfuzzy'
"let g:ncm2#matcher = 'abbrfuzzy'

" use a sorter that's more friendly for fuzzy match
let g:ncm2#sorter = 'abbrfuzzy'

" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
inoremap <c-c> <ESC>

" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
"inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" Use <TAB> to select the popup menu:
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" Open the popup menu completion.
imap <C-space> <Plug>(ncm2_manual_trigger)

" Change the minimun letters to pop the autocomplete.
"let g:ncm2#complete_length = [[1,3],[7,2]]

"/
""/ Cosco.vim
"/

autocmd FileType javascript.jsx,css,php nmap <buffer> <silent> , <Plug>(cosco-commaOrSemiColon)
autocmd FileType javascript.jsx,css,php imap <buffer> <silent> <Leader>, <c-o><Plug>(cosco-commaOrSemiColon)
let g:cosco_ignore_comment_lines = 1

"/
""/ Ultisnips.vim
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

"/
""/ LanguageServer.vim
"/

" Disable de diagnostics for the LSP.
let g:LanguageClient_diagnosticsEnable = 0

"let g:LanguageClient_loggingLevel = 'DEBUG'

let g:LanguageClient_serverCommands = {}
let g:LanguageClient_serverCommands.html = ['html-languageserver', '--stdio']
"let g:LanguageClient_serverCommands.css = ['css-languageserver', '--stdio']
" First do: npm install vue-language-server -g
let g:LanguageClient_serverCommands.vue = ['vls']

"/
""/ clever-f.vim
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

"/
""/ hard-time.vim
"/

let g:hardtime_timeout = 500
let g:hardtime_default_on = 0
let g:list_of_normal_keys = ["h", "j", "k", "l",
            \"+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]

nnoremap <silent> <F4> :HardTimeToggle<CR>

"/
""/ vim-dirvish
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
augroup END

"/
""/ vim-highlightedyank
"/

highlight link HighlightedyankRegion ErrorMsg

"/
""/ matchit.vim
"/

" Support self-closed tags for %
" see: https://vi.stackexchange.com/questions/7167/how-do-i-get-matchit-to-work-with-self-closed-tags
"autocmd Filetype javascript.jsx,vue let b:match_ignorecase = 0
"autocmd Filetype javascript.jsx,vue let b:match_words = '(:),\[:\],{:},<:>,' .
"            \ '<\@<=\([^/][^ \t>]*\)[^>]*\%(\%(=\|/\)\@<!>\|$\):<\@<=/\1>'

"/
""/ vim-matchup
"/

" To enable the delete surrounding (ds%) and change surrounding (cs%) maps.
let g:matchup_surround_enabled = 1

let g:matchup_matchparen_status_offscreen = 0

"let g:matchup_matchparen_deferred = 1
"let g:matchup_matchparen_hi_surround_always = 1

autocmd Filetype javascript.jsx setlocal matchpairs=(:),{:},[:],<:>
autocmd Filetype javascript.jsx let b:match_words = '<\@<=\([^/][^ \t>]*\)\g{hlend}[^>]*\%(/\@<!>\|$\):<\@<=/\1>'

nmap <silent> <F7> <plug>(matchup-hi-surround)


"/
""/ fzf.vim
"/

" FZF position.
let g:fzf_layout = { 'down': '~40%' }

" FZF mappings.
nnoremap <A-n> :Lines<CR>
nnoremap <A-b> :BTags<CR>
nnoremap <A-m> :Marks<CR>
nnoremap <A-t> :Ag<CR>
nnoremap <A-r> :Tags<CR>
nnoremap <A-e> :History<CR>
nnoremap <A-c> :Snippets<CR>
nnoremap ; :Buffers<CR>
nnoremap <C-p> :Files<CR>

"/
""/ vim-pasta
"/

"let g:pasta_disabled_filetypes = ["python", "coffee", "markdown",
"            \"yaml", "slim", "nerdtree", "netrw", "startify", "dirvish"]

"/
""/ emmet.vim
"/

let g:user_emmet_leader_key='<C-f>'

let g:user_emmet_settings = {
            \  'javascript.jsx' : {
            \      'extends' : 'jsx',
            \  },
            \}

"/
""/ vim-asterisk
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

"/
""/ vim-move
"/

let g:move_key_modifier = 'C-M'
"let g:move_auto_indent = 0

"/
""/ replace.vim
"/

nmap R <Plug>ReplaceOperator
vmap R <Plug>ReplaceOperator
nmap X <Plug>ExchangeOperator

"/
""/ targets.vim
"/

"Controls the keys used in maps for seeking next and last text objects.
let g:targets_nl = 'nN'

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
"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup line_return
    au!
    au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \     execute 'normal! g`"zvzz' |
                \ endif
augroup END

" Set the indent options for Javascript files.
autocmd FileType javascript.jsx setlocal ts=2 sts=2 sw=2

" Set the indent options for Json files.
autocmd FileType json setlocal ts=2 sts=2 sw=2

" Set the indent options for CSS files.
"autocmd FileType css setlocal ts=2 sts=2 sw=2

" Set the indent options for HTML files.
"autocmd FileType html,vue,blade setlocal ts=2 sts=2 sw=2

" Autocommand to call PhpSyntaxOverride function.
augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END

" Generally we are working with mysql in sql files, auto set the filetype.
"au BufNewFile,BufRead *.sql set filetype=mysql

" Wipe the netrw buffer when go hidden.
autocmd FileType netrw setl bufhidden=wipe

" Start the LSP for PHP.
"autocmd FileType php LanguageClientStart
autocmd FileType php setlocal omnifunc=LanguageClient#complete

" Treat `$` as part of the word for PHP.
autocmd FileType php setlocal iskeyword+=$

" Start the LSP for Vue.
"autocmd FileType vue LanguageClientStart
autocmd FileType vue setlocal omnifunc=LanguageClient#complete

" Set the omnifunc for CSS.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci

" Only show cursorline in the current window and in normal mode.
augroup cline
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END

" Only shown when not in insert mode so I don't go insane.
augroup trailing
    au!
    au InsertEnter * :set listchars-=trail:·
    au InsertLeave * :set listchars+=trail:·
augroup END

" Toggle hlsearch.
augroup vimrc-incsearch-highlight
    autocmd!
    autocmd CmdlineEnter /,\? :set hlsearch
    autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

" Update the auto read of a file after 4 seconds.
augroup autoRead
    autocmd!
    autocmd CursorHold * silent! checktime
augroup END

" Support `-` in css property names
augroup VimCSS3Syntax
    autocmd!
    autocmd FileType css setlocal iskeyword+=.,-,#
    autocmd FileType scss setlocal iskeyword+=.,-,#
augroup END

call jspretmpl#register_tag('gql', 'graphql')
autocmd FileType javascript.jsx JsPreTmpl graphql
"autocmd FileType javascript JsPreTmpl

"--------------------------------End Auto Commands-----------------------------"
"}}}




"--------------------------------Macros----------------------------------------"{{{

"/
"/ PHP
"/

" Put a var_dump() selecting text from current point to end of word (e),
" searching for the closest empty line to paste it and a die().
"let @a = 'ye}ovar_dump(0);
"die();
"'
"
"" Put a var_dump() selecting text from current point to end of word (e),
"" pasting under the current line and a die().
"let @s = 'yeovar_dump(0);
"die();'

"--------------------------------End Macros------------------------------------"
"}}}




"--------------------------------Functions-------------------------------------"{{{

" Function to override @tags and @params in the comments sections of PHP.
function! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
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

" I like relative numbering when in normal mode.
autocmd TermOpen * setlocal conceallevel=0 colorcolumn=0 relativenumber

" Prefer Neovim terminal insert mode to normal mode.
autocmd BufEnter term://* startinsert

" In :terminal mode.
tnoremap <C-Esc> <C-\><C-n>
tnoremap <M-h> <C-\><C-N><C-w>h
tnoremap <M-j> <C-\><C-N><C-w>j
tnoremap <M-k> <C-\><C-N><C-w>k
tnoremap <M-l> <C-\><C-N><C-w>l

" Open a tab with a terminal with Right Ctrl (å)
nnoremap <Leader>t :tabnew term://zsh<CR>

"if !has("gui_running")
"
"    " give us 256 color schemes!
"    "set term=screen-256color
"
"    "let g:solarized_termcolors=256
"
"endif

"--------------------------------End Terminal Only-----------------------------"
"}}}




"--------------------------------PHP Debug-------------------------------------"{{{


"--------------------------------End PHP Debug---------------------------------"
"}}}




"--------------------------------Tips and Remainders---------------------------"{{{

" Pipe json buffer to python formatter:
" `%!python -mjson.tool`

" Send selected lines to clipboard:
" `'<,'>w ! xsel -bi`

"--------------------------------End Tips and Remainders-----------------------"
"}}}
" vim: set fdm=marker fmr={{{,}}} :
