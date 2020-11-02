nnoremap <SPACE> <Nop>

" set leader key
let mapleader = "\<Space>"

nnoremap <C-w> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <S-q> :q!<CR>
nnoremap <C-c> <Esc>

" Fast quit
"
inoremap jk <Esc>
inoremap kj <Esc>

" Better tabbing
"
vnoremap <TAB> > >gv
vnoremap <S-TAB> < <gv

" Navigation into buffers
"
nnoremap <S-h> :bnext<CR>
nnoremap <S-l> :bprev<CR>
nnoremap <S-c> :bd<CR>
