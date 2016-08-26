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
