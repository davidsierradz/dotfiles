" Disable alt for menus
set winaltkeys=no
" Start GVim maximized using wmctrl Shell command
" && wmctrl -r :ACTIVE: -b toggle,maximized_vert,maximized_horz
autocmd VimEnter * silent !sleep 0.2s && wmctrl -r :ACTIVE: -b toggle,fullscreen
" F11 Full screen
map <silent> <F11>
            \    :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>
set guioptions-=r  " no scrollbar on the right
set guioptions-=l  " no scrollbar on the left
set guioptions-=L  " no scrollbar on the left in splits
set guioptions-=m  " no menu
set guioptions-=T  " no toolbar

" Gvim hi colors

hi SpecialKey guifg=#657b83 guibg=NONE
hi VertSplit  guifg=#b58900 guibg=#b58900
hi NonText gui=bold guifg=#b58900
hi ColorColumn guibg=#d33682
hi Search gui=underline guifg=#dc322f
hi IncSearch gui=underline guifg=#dc322f
"hi StatusLine gui=NONE guibg=#2aa198 guifg=#002b36
"hi StatusLineNC gui=NONE guibg=#b58900 guifg=#002b36
