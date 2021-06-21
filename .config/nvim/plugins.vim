" --- VimPlug: start install --- "
" - Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
" - Make sure you use single quotes
call plug#begin('~/.nvim/plugged')

" --- Telescope --- "
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" --- LSP install --- "
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'
Plug 'kosayoda/nvim-lightbulb'

" --- Vim Commentary --- "
Plug 'tpope/vim-commentary'

" --- Vim Rooter --- "
Plug 'airblade/vim-rooter'

" --- Vim Tree --- "
Plug 'kyazdani42/nvim-tree.lua'

" --- Syntax --- "
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sheerun/vim-polyglot'
Plug 'vmchale/dhall-vim'

" --- Format --- "
Plug 'mhartington/formatter.nvim'

" --- Status Line --- "
Plug 'glepnir/galaxyline.nvim'

" --- System Copy --- "
Plug 'christoomey/vim-system-copy'

" --- Icons --- "
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'ryanoasis/vim-devicons'

" --- Color schemes --- "
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'morhetz/gruvbox'
Plug 'franbach/miramare'
Plug 'nightsense/snow'
Plug 'glepnir/oceanic-material'
Plug 'arcticicestudio/nord-vim'
Plug 'folke/lsp-colors.nvim'
Plug 'NLKNguyen/papercolor-theme'

" --- VimPlug: end install --- "
call plug#end()


" --- Plugins config --- "
source ~/.config/nvim/plugins/colorschemes-config.vim
luafile ~/.config/nvim/plugins/treesitter-config.lua
source ~/.config/nvim/plugins/telescope-config.vim
luafile ~/.config/nvim/plugins/telescope-config.lua
source ~/.config/nvim/plugins/formatter-config.vim
luafile ~/.config/nvim/plugins/formatter-config.lua
source ~/.config/nvim/plugins/nvim-tree-config.vim
luafile ~/.config/nvim/plugins/galaxyline-config.lua

" --- LSP config --- "
source ~/.config/nvim/plugins/lsp/lsp-config.vim
source ~/.config/nvim/plugins/lsp/compe-config.vim
source ~/.config/nvim/plugins/lsp/lspsaga-config.vim
luafile ~/.config/nvim/plugins/lsp/compe-config.lua
luafile ~/.config/nvim/plugins/lsp/nvim-lightbulb-config.lua

" --- LSP: LanguageServers config --- "
luafile ~/.config/nvim/plugins/lsp/python-ls.lua
luafile ~/.config/nvim/plugins/lsp/vls-ls.lua
luafile ~/.config/nvim/plugins/lsp/tsserver-ls.lua
luafile ~/.config/nvim/plugins/lsp/dhall_lsp_server-ls.lua
luafile ~/.config/nvim/plugins/lsp/haskell-language-server-wrapper-ls.lua
