" --- VimPlug: start install --- "
" - Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
" - Make sure you use single quotes
call plug#begin('~/.nvim/plugged')

" --- Telescope --- "
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" --- LSP install --- "
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
" Plug 'glepnir/lspsaga.nvim'
Plug 'kosayoda/nvim-lightbulb'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

" --- Vim Commentary --- "
Plug 'tpope/vim-commentary'

" --- Vim Unimpaired --- "
Plug 'tpope/vim-unimpaired'

" --- Vim Rooter --- "
Plug 'airblade/vim-rooter'

" --- Vim Tree --- "
Plug 'kyazdani42/nvim-tree.lua'

" --- Vim Maximizer --- "
Plug 'szw/vim-maximizer'
noremap <C-w>m :MaximizerToggle<CR>

" --- NeoClip --- "
Plug 'AckslD/nvim-neoclip.lua'

" --- Syntax --- "
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'sheerun/vim-polyglot'
Plug 'vmchale/dhall-vim'

" --- Format --- "
Plug 'mhartington/formatter.nvim'

" --- Status Line --- "
Plug 'glepnir/galaxyline.nvim'

" --- Git --- "
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

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
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'junegunn/seoul256.vim'
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'EdenEast/nightfox.nvim'

" --- VimPlug: end install --- "
call plug#end()


" --- Plugins config --- "
source ~/.config/nvim/plugins/vim-fugitive-config.vim
source ~/.config/nvim/plugins/vim-gitgutter-config.vim
source ~/.config/nvim/plugins/colorschemes-config.vim
luafile ~/.config/nvim/plugins/treesitter-config.lua
source ~/.config/nvim/plugins/telescope-config.vim
luafile ~/.config/nvim/plugins/telescope-config.lua
source ~/.config/nvim/plugins/formatter-config.vim
luafile ~/.config/nvim/plugins/formatter-config.lua
source ~/.config/nvim/plugins/nvim-tree-config.vim
luafile ~/.config/nvim/plugins/nvim-tree-config.lua
luafile ~/.config/nvim/plugins/galaxyline-config.lua
luafile ~/.config/nvim/plugins/neoclip-config.lua
:lua require('telescope').load_extension('neoclip')

" --- LSP config --- "
source ~/.config/nvim/plugins/lsp/lsp-config.vim
source ~/.config/nvim/plugins/lsp/lsp-config.lua
source ~/.config/nvim/plugins/lsp/compe-config.vim
luafile ~/.config/nvim/plugins/lsp/compe-config.lua
luafile ~/.config/nvim/plugins/lsp/nvim-lightbulb-config.lua

" --- LSP: LanguageServers config --- "
luafile ~/.config/nvim/plugins/lsp/python-ls.lua
luafile ~/.config/nvim/plugins/lsp/vls-ls.lua
luafile ~/.config/nvim/plugins/lsp/tsserver-ls.lua
luafile ~/.config/nvim/plugins/lsp/dhall_lsp_server-ls.lua
luafile ~/.config/nvim/plugins/lsp/haskell-language-server-wrapper-ls.lua
