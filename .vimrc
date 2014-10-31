" General settings
syntax on
set number
set showcmd
set tabstop=4
set autoindent
set shiftwidth=4
set noexpandtab
set showtabline=2
set nocompatible

" Language specific settings
au BufRead,BufNewFile *.py set expandtab 
au BufRead,BufNewFile Makefile* set tabstop=8
au BufRead,BufNewFile *.java set tabstop=2
au BufRead,BufNewFile *.tex set tabstop=2
au BufRead,BufNewFile *.cpp set tabstop=2

" Map F9 for saving and running make
 map <f9> : w<CR> : ! make<CR>

"Map F7 & F8 for tab navigation
map <f7> :tabp<CR>
map <f8> :tabn<CR>

" Map gj and gk to j and k for navigating wrapped lines
map j  gj
map k  gk

" Pathogen for easy plugin installs
execute pathogen#infect()

" Color scheme
set background=dark
colorscheme blugrine 

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>



