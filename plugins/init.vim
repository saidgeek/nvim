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

  " Git
  "
  Plug 'tpope/vim-fugitive'

call plug#end()

autocmd VimEnter * 
	\ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	\| PlugInstall --sync | q
	\| endif
