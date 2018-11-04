call plug#begin('$HOME/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'itchyny/lightline.vim'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'srcery-colors/srcery-vim'

Plug 'tpope/vim-fugitive'

call plug#end()

