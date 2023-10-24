" Settings for Vundle
set nocompatible              " be iMproved, required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
call plug#begin('~/.vim/bundle')

" Navigate between vim windows and tmux panes
Plug 'christoomey/vim-tmux-navigator'

Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive'

Plug 'neovim/nvim-lspconfig'

call plug#end()

" Turn off preview
set completeopt-=preview

" General settings
set number relativenumber
set showcmd
set tabstop=4
set autoindent
set shiftwidth=4
set showtabline=4
set ignorecase
set smartcase
set backspace=indent,eol,start

" Language specific settings other than global
au BufRead,BufNewFile Makefile set filetype=makefile 
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
autocmd FileType makefile setlocal tabstop=8 shiftwidth=8 softtabstop=8 noexpandtab

" Leader key
nnoremap , <Nop>
let mapleader = ","

" Map gj and gk to j and k for navigating wrapped lines
nnoremap j  gj
nnoremap k  gk

" Netrw file explorer settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_winsize = 80

" Follow tag in new tab or vert split
"map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
"
"" ReIndex (Note: Ctrl I is the same as TAB in vim!)
"nnoremap <leader>i :! cscope -R -b<CR>:cs reset<CR>:! ctags -R<CR>

" Fuzzy file finding
nnoremap <C-p> :Files<CR>

" Tab navigation shortcuts
cnoreabbrev <expr> tn getcmdtype() == ":" && getcmdline() == 'tn' ? 'tabnew' : 'tn'
cnoreabbrev <expr> te getcmdtype() == ":" && getcmdline() == 'te' ? 'tabedit' : 'te'
map <f7> :tabp<CR>
map <f8> :tabn<CR>
map <f3> 1gt

" Enhanced incrementing numbers
function! Incr()
  let a = line('.') - line("'<")
  let c = virtcol("'<")
  if a > 0
    execute 'normal! '.c.'|'.a."\<C-a>"
  endif
  normal `<
endfunction
vnoremap <C-a> :call Incr()<CR>

" Color scheme
set background=dark
colorscheme blugrine 

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex,matlab       let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Enhanced tab completion
set wildmode=longest,list,full
set wildmenu

" Doxygen toolkit settings
" Using eclipse (/** ... */) style for now, with no @brief statement
let g:DoxygenToolkit_briefTag_pre = ""

" Highlight doxygen syntax
let g:load_doxygen_syntax=1

" Grep alias
command -nargs=1 Grep grep -rnI --exclude-dir={\.svn,\.git,\.hg} --exclude={cscope.out,pycscope.out,tags} <args> ./
command -nargs=1 Igrep grep -rniI --exclude-dir={\.svn,\.git,\.hg} --exclude={cscope.out,pycscope.out,tags} <args> ./
