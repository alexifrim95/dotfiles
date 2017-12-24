" set the runtime path to include Vundle and initialize
set rtp+=~/HOME/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'davidhalter/jedi-vim'
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:ale_sign_column_always = 1
autocmd vimenter * NERDTree
highlight BadWhitespace ctermbg=red guibg=red
set encoding=utf-8
" Enable folding
set foldmethod=indent
set foldlevel=99
set number relativenumber
" Enable folding with the spacebar
nnoremap <space> za
" PEP8 standard
au BufNewFile,BufRead *.py set tabstop=4
"   \ set softtabstop=4
"   \ set shiftwidth=4
"   \ set textwidth=79
"   \ set expandtab
"   \ set autoindent
"   \ set fileformat=unix

let python_highlight_all=1
syntax on
" Full stack development
au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2 
    \ set softtabstop=2 
    \ set shiftwidth=2
set backspace=indent,eol,start  " backspace over everything
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
colorscheme desert
nmap <F12> :NERDTreeToggle<CR>
set guifont=Consolas:h14
set hlsearch
hi Search guibg=Red
let NERDTreeIgnore = ['\.pyc$']
"let NERDTreeShowBookmarks=1
cd ~
set belloff=all
