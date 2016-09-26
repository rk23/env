set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
   
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
 
Bundle 'Shougo/neocomplete.vim'

Bundle 'hdima/python-syntax'

Bundle 'klen/python-mode'

Bundle 'sheerun/vim-polyglot'

let g:neocomplcache_enable_at_startup = 1
let g:solarized_termcolors = 256
let g:pymode_warnings = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_options_colorcolumn = 1 
let g:pymode_lint = 0
let g:pymode_lint_checkers = ['pep8']
let g:pymode_folding = 0
let g:pymode_rope = 0
let g:pymode_syntax_indent_errors = 1 
let g:pymode_syntax_space_errors = 1
let g:pymode_motion = 1
let g:pymode_options = 1

"colorscheme solarized

syntax enable
filetype plugin indent on

set ttyfast
set omnifunc=syntaxcomplete#Complete
set number 
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4
set background=dark
set colorcolumn=80
set tabstop=8
let g:EasyMotion_smartcase = 1

vmap <Tab> >gva
vmap <S-Tab> <gv
map <C-l> gt
map <C-h> gT
map <C-up> <esc>ddkP
map <C-down> ddp
map <C-c> "+y
map <C-x> :q<cr>
