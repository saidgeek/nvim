nnoremap <SPACE> <Nop>

" set leader key
let mapleader = "\<Space>"

nnoremap <C-w> :w<CR>
nnoremap <C-W> :wq<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-Q> :q!<CR>
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
" nnoremap <leader><TAB> :bnext<CR>
" nnoremap <C-S-tab> :bprevious<CR>
