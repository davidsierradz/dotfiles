"--------------------------------General---------------------------------------"

" GUI font.
GuiFont UbuntuMonoDerivativePowerline Nerd Font:h13

" Select with the mouse.
set mouse=a

" Paste on Gvim.
set clipboard=unnamed,unnamedplus
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
"hi VertSplit  guifg=#b58900 guibg=#b58900
hi NonText gui=bold guifg=#b58900
"hi ColorColumn guibg=#d33682
hi Search gui=underline guifg=#dc322f
hi IncSearch gui=underline guifg=#dc322f
"hi CursorLine guibg=#333333
let g:gitgutter_override_sign_column_highlight = 0
hi LineNr guibg=bg
hi GitGutterAdd guifg=#009900 guibg=bg
hi GitGutterChange guifg=#bbbb00 guibg=bg
hi GitGutterDelete guifg=#ff2222 guibg=bg
hi GitGutterChangeDelete guifg=#009900 guibg=bg
"hi StatusLine gui=NONE guibg=#2aa198 guifg=#002b36
"hi StatusLineNC gui=NONE guibg=#b58900 guifg=#002b36

" Set the ruler to 81 and 120 columns.
"highlight ColorColumn ctermbg=235 guibg=#003036
"highlight ColorColumn ctermbg=235 guibg=#073642
"let &colorcolumn=join(range(82,999),",")
"let &colorcolumn="81,".join(range(120,999),",")

" Delete bottom border GVim.
"set guiheadroom=-50

" Line height.
"set linespace=8
GuiLinespace 4

"hi Cursor guifg=black guibg=green gui=reverse
"set guicursor=a:block-blinkon100-Cursor/Cursor

"--------------------------------End Visuals-----------------------------------"
