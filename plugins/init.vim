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

  " Theme
  "
  Plug 'joshdick/onedark.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  
  " IDE
	"
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

call plug#end()

autocmd VimEnter * 
	\ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	\| PlugInstall --sync | q
	\| endif
