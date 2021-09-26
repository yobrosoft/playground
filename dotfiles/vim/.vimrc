" Main configuration

set noncompatible
let mapleader = " "
setbackspace=2
set mouse=a
set ruler
set showcmd
set laststatus=2
set autowrite


" Load plugins

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
call plug#end()


" Indentations and Spacing

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set list listchars=tab:»·,trail:·,nbsp:·" display extra whitespace
set nojoinspaces " Use one space after punctuation
set textwidth=80
set colorcolumn=+1
set relativenumber number
set numberwidth=5

function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction

inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>


