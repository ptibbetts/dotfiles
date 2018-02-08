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

"---Plugins are managed by Ansible---"
"https://github.com/ptibbetts/macOS
