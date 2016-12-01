"--------------------------------General---------------------------------------"

" GUI font.
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 10

" Paste on Gvim.
set clipboard=unnamed,unnamedplus

" Disable alt for menus.
set winaltkeys=no

"--------------------------------End General-----------------------------------"




"--------------------------------Visuals---------------------------------------"

" no scrollbar on the right.
set guioptions-=r

" no scrollbar on the left.
set guioptions-=l

" no scrollbar on the left in splits.
set guioptions-=L

" no menu.
set guioptions-=m

" no toolbar.
set guioptions-=T

" no icon.
set guioptions-=i

" no grey menu.
set guioptions-=g

" no tearoff menu.
set guioptions-=t

" Console-like dialogs instead of popup ones.
set guioptions+=c

" Gvim hi colors.
hi SpecialKey guifg=#657b83 guibg=NONE
hi VertSplit  guifg=#b58900 guibg=#b58900
hi NonText gui=bold guifg=#b58900
"hi ColorColumn guibg=#d33682
hi Search gui=underline guifg=#dc322f
hi IncSearch gui=underline guifg=#dc322f
"hi CursorLine guibg=#333333
"hi LineNr guifg=#555555 guibg=bg
"hi StatusLine gui=NONE guibg=#2aa198 guifg=#002b36
"hi StatusLineNC gui=NONE guibg=#b58900 guifg=#002b36

" Set the ruler to 81 and 120 columns.
"highlight ColorColumn ctermbg=235 guibg=#003036
highlight ColorColumn ctermbg=235 guibg=#073642
let &colorcolumn=join(range(82,999),",")
let &colorcolumn="81,".join(range(120,999),",")

" Delete bottom border GVim.
set guiheadroom=-50

"--------------------------------End Visuals-----------------------------------"




"--------------------------------General Mappings------------------------------"

" F11 Full screen.
"nnoremap <silent> <F11>
"            \    :call system('wmctrl -ir ' . v:windowid . ' -b toggle,fullscreen')<CR>

" Mapping <Ctrl-Space> to reverse searching in Gvim only.
"nnoremap <C-Space> ?

"--------------------------------End General Mappings--------------------------"




"--------------------------------Auto Commands---------------------------------"

" Start GVim maximized using wmctrl Shell command
" && wmctrl -r :ACTIVE: -b toggle,maximized_vert,maximized_horz.
"autocmd VimEnter * silent !sleep 0.2s && wmctrl -r :ACTIVE: -b toggle,fullscreen

"--------------------------------End Auto Commands-----------------------------"
