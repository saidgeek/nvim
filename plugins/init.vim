if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall | source ~/.config/nvim/init.vim

endif

call plug#begin('~/.config/nvim/autoload/plugged')

	" Syntax
	"
	Plug 'sheerun/vim-polyglot'
	Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'leafgarland/typescript-vim'
  Plug 'ianks/vim-tsx'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'tpope/vim-commentary'
  Plug 'rust-lang/rust.vim'

  " Theme
  "
  Plug 'joshdick/onedark.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  
  " IDE
	"
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'w0rp/ale'
  Plug 'prettier/vim-prettier'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'mhinz/vim-startify'
  Plug 'matze/vim-move'
  Plug 'godlygeek/tabular', {'for': 'markdown'}
  Plug 'plasticboy/vim-markdown', {'for': 'markdown'}

  " FZF
  "
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'

  " EasyMotion
  "
  Plug 'easymotion/vim-easymotion'

  " Git
  "
  Plug 'tpope/vim-fugitive'

call plug#end()

autocmd VimEnter * 
	\ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	\| PlugInstall --sync | q
	\| endif
