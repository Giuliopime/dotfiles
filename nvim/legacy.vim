set termguicolors
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox

" rainbow parens
let g:rainbow_active = 1

" Syntax highlighting
syntax on

" Position in code
set number
set ruler

" default file encoding
set encoding=utf-8
set fileencoding=utf-8

" Line wrap
set wrap

function! SetTab(n)
  let &tabstop=a:n
  let &shiftwidth=a:n
  let &softtabstop=a:n
  set expandtab
  set autoindent
  set smartindent
endfunction

command! -nargs=1 SetTab call SetTab(<f-args>)

set noexpandtab
set autoindent
set smartindent

set hlsearch
set incsearch


" colorcolumn 80 when opening C/C++
autocmd BufRead,BufNewFile *.c setlocal colorcolumn=80
autocmd BufRead,BufNewFile *.h setlocal colorcolumn=80
autocmd BufRead,BufNewFile *.cpp setlocal colorcolumn=80
autocmd BufRead,BufNewFile *.hpp setlocal colorcolumn=80
autocmd BufRead,BufNewFile *.c SetTab 4
autocmd BufRead,BufNewFile *.h SetTab 4
autocmd BufRead,BufNewFile *.cpp SetTab 4
autocmd BufRead,BufNewFile *.hpp SetTab 4

" C/C++ indent options: fix extra indentation on function continuation
set cino=(0,W4

" Mouse support
set mouse=a
