" --- VimPlug: start install --- "
" - Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
" - Make sure you use single quotes
call plug#begin('~/.vim/plugged')

" --- LSP install --- "
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

" --- VimPlug: end install --- "
call plug#end()

" --- LSP config --- "
source ~/.config/nvim/lsp/lsp-config.vim
luafile ~/.config/nvim/lsp/compe-config.lua
luafile ~/.config/nvim/lsp/python-ls.lua
luafile ~/.config/nvim/lsp/vls-ls.lua
