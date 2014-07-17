" configure expanding of tabs for various file types
syntax on
set number
set showcmd
set tabstop=4
set autoindent
set shiftwidth=4
set noexpandtab


au BufRead,BufNewFile *.py set expandtab 
au BufRead,BufNewFile Makefile* set tabstop=8
au BufRead,BufNewFile *.java set tabstop=2
au BufRead,BufNewFile *.tex set tabstop=2
au BufRead,BufNewFile *.tex set tw=90

" Map Ctrl+P for executing Python scripts
map <C-p> : w<CR> : ! python %<CR>

" Map gj and gk to j and k for navigating wrapped lines
map j  gj
map k  gk

" Pathogen for easy plugin installs
execute pathogen#infect()

" Color scheme
colorscheme blugrine 
