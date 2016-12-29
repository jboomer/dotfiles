" Settings for Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YouCompleteMe plugin
Plugin 'Valloric/YouCompleteMe'

" MISC plugin for xolox plugins
Plugin 'xolox/vim-misc'

" Easytags
Plugin 'xolox/vim-easytags'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" YCM SETTINGS

" Use generic cpp configuration file:
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Whitelist YCM enabled
let g:ycm_filetype_whitelist = {'c' : 1, 'cpp' : 1, 'python' : 1}

" White/black list conf files
let g:ycm_extra_conf_globlist = ['~/workspaces/*']

" Use include path relative to vim working dir
let g:ycm_filepath_completion_use_working_dir = 1

" EASYTAGS SETTINGS
let g:easytags_auto_highlight = 0


" Turn off preview
set completeopt-=preview

" General settings
syntax on
set number
set showcmd
set tabstop=2
set autoindent
set shiftwidth=2
set expandtab
set showtabline=2
set nocompatible
set ignorecase
set smartcase
set backspace=indent,eol,start

" Language specific settings other than global
au BufRead,BufNewFile Makefile set filetype=makefile 
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 tabstop=4
autocmd FileType makefile setlocal tabstop=8 shiftwidth=8 softtabstop=8 noexpandtab

" Map gj and gk to j and k for navigating wrapped lines
map j  gj
map k  gk

" Follow tag in new tab or vert split
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" ReIndex
map <C-j> :! cscope -R -b<CR>:cs reset<CR>

" Tab navigation shortcuts
cnoreabbrev <expr> tn getcmdtype() == ":" && getcmdline() == 'tn' ? 'tabnew' : 'tn'
cnoreabbrev <expr> te getcmdtype() == ":" && getcmdline() == 'te' ? 'tabedit' : 'te'
map <f7> :tabp<CR>
map <f8> :tabn<CR>

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

" Enhanced tab completion
set wildmode=longest,list,full
set wildmenu

" Doxygen toolkit settings
let g:DoxygenToolkit_commentType = "C++"

" YCM settings
set completeopt-=preview

let g:ycm_confirm_extra_conf=0
" Highlight doxygen syntax
let g:load_doxygen_syntax=1

" map F6 to add Doxygen comments
map <f6> :Dox<CR>

