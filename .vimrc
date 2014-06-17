" configure expanding of tabs for various file types
syntax on
set number
set showcmd
set textwidth=120
set tabstop=4
set autoindent
set shiftwidth=4
set noexpandtab


au BufRead,BufNewFile *.py set expandtab 
au BufRead,BufNewFile Makefile* set tabstop=8
au BufRead,BufNewFile *.java set tabstop=2

" Map Ctrl+P for executing Python scripts
map <C-p> : w<CR> : ! python %<CR>

" Map Ctrl+F11 to compiling java code
map <C-<F11>> : w<CR> : ! javac %

" Pathogen for easy plugin installs
execute pathogen#infect()
