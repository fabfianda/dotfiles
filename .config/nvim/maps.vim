" --- Basics --- "
nnoremap <SPACE><SPACE><SPACE> :noh <CR>
tnoremap <Esc> <C-\><C-n>

" --- Copy to clipboard --- "
vnoremap y  "+y
nnoremap Y  "+yg_
nnoremap y  "+y
nnoremap yy "+yy

" --- Paste from clipboard --- "
nnoremap <leader>p  "+p
nnoremap <leader>P  "+P

" --- Reload config --- "
nnoremap <SPACE>r :source ~/.config/nvim/init.vim <CR> 

" --- Custom --- "
vnoremap <SPACE>e :call Hev() <CR> 
nnoremap <SPACE>e :call Hev() <CR> 
