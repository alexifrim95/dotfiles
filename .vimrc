set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()

autocmd vimenter * NERDTree
autocmd BufNewFile,BufRead *.py	set tabstop=4 
autocmd BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
autocmd BufNewFile,BufRead *.js,*.html,*.css set tabstop=2 
    \ set softtabstop=2 
    \ set shiftwidth=2

filetype plugin indent on

let g:ale_sign_column_always = 1
let s:is_windows = has('win32') || has('win64')
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeShowBookmarks=1
let python_highlight_all=1

highlight Search guibg=Red
highlight BadWhitespace ctermbg=red guibg=red


" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Folding with <space> key
nnoremap <space> za
" Open tree with <F12> key
nnoremap <F12> :NERDTreeToggle<CR>

set belloff=all
set encoding=utf-8
set foldmethod=indent	" Enable folding
set foldlevel=99
set number relativenumber
set guifont=Consolas:h14
set hlsearch
set backspace=indent,eol,start	" Backspace over everything
set rtp+=~/.vim/bundle/powerline/build/lib/powerline/bindings/vim
set laststatus=2
set t_Co=256

source ~/.vim/bundle/vim-flake8/ftplugin/python_flake8.vim
syntax on

if s:is_windows
	cd D:\
	set background=dark
	colorscheme solarized
else
	cd ~
	colorscheme zenburn
endif

