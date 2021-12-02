" --- Basics --- "
nnoremap <SPACE><SPACE><SPACE> :noh <CR>
tnoremap <Esc> <C-\><C-n>

" --- Session --- "

nnoremap <SPACE><SPACE><SPACE> :noh <CR>
exec 'nnoremap <SPACE>s :mksession! vim-session'
exec 'nnoremap <SPACE>y :so vim-session '

" --- Copy to clipboard --- "
vnoremap y  "+y
nnoremap Y  "+yg_
nnoremap y  "+y
nnoremap yy "+yy

" --- Paste from clipboard --- "
nnoremap <leader>p  "+p
nnoremap <leader>P  "+P
