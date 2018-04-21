set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Utility
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'

" General
Plugin 'tpope/vim-commentary'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'davidhalter/jedi-vim'

" View
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()

autocmd BufNewFile,BufRead *.py,*.pyw,*.c,*.h set tabstop=4
			\ softtabstop=4
			\ shiftwidth=4
			\ textwidth=80
autocmd BufNewFile,BufRead *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
autocmd BufNewFile,BufRead *.js,*.html,*.css set tabstop=2
			\ softtabstop=2

filetype plugin indent on

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8', 'python']

let nerdtreeignore = ['\.pyc$']
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

nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

set belloff=all
set encoding=utf-8
set foldmethod=indent	" Enable folding
set foldlevel=99
set number relativenumber
" set guifont=Consolas:h14
set antialias
set hlsearch
set incsearch
set backspace=indent,eol,start	" Backspace over everything
set laststatus=2
set t_Co=256

syntax enable

set background=dark
let g:syntastic_error_symbol = "✗"
let g:syntastic_style_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_warning_symbol = "⚠"

