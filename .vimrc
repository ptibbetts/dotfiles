"---UI---"

syntax on
let mapleader = ','
set number

"---Search---"

set hlsearch
set incsearch

"---Mappings---"

"Shortcut to edit Vimrc
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal
lmap <Leader><space> :nohlsearch<cr>

"---Auto-Commands---"

"Automatically source Vimrc on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

"---Plug---"
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'dracula/vim'
call plug#end()

color dracula