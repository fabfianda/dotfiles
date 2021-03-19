" --- VimPlug: start install --- "
" - Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
" - Make sure you use single quotes
call plug#begin('~/.vim/plugged')

" --- Vim Commentary --- "
Plug 'tpope/vim-commentary'

" --- Syntax --- "
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" --- Telescope --- "
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" --- LSP install --- "
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

" --- Color schemes --- "
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'morhetz/gruvbox'
Plug 'franbach/miramare'

" --- VimPlug: end install --- "
call plug#end()


" --- Plugins config --- "
luafile ~/.config/nvim/plugins/treesitter-config.lua
source ~/.config/nvim/plugins/telescope-config.vim
luafile ~/.config/nvim/plugins/telescope-config.lua

" --- LSP config --- "
source ~/.config/nvim/plugins/lsp/lsp-config.vim
source ~/.config/nvim/plugins/lsp/compe-config.vim
luafile ~/.config/nvim/plugins/lsp/compe-config.lua
luafile ~/.config/nvim/plugins/lsp/python-ls.lua
luafile ~/.config/nvim/plugins/lsp/vls-ls.lua
luafile ~/.config/nvim/plugins/lsp/tsserver-ls.lua
