---@diagnostic disable: undefined-global

require 'basics'
require 'colors'
require 'coc-config'
require 'telescope-config'
require('lualine').setup()
require('neogit-config')
require('rest-nvim-config')

require('nvim-treesitter.configs').setup {
	ensure_installed = "all",
	highlight = {
		enable = true,
		disable = { "lua" }
	},
	indent = {
		enable = true
	},
	context_commentstring = {
		enable = true
	}
}

return require('packer').startup(function()

	use 'wbthomason/packer.nvim'

	use 'nvim-treesitter/nvim-treesitter'
	use 'JoosepAlviste/nvim-ts-context-commentstring'
	use 'tpope/vim-commentary'
	use {'neoclide/coc.nvim', branch = 'release'}
  use {'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim'}

	-- themes
	use 'folke/tokyonight.nvim'
	use {
    		'nvim-lualine/lualine.nvim',
    		requires = {'kyazdani42/nvim-web-devicons', opt = true}
  	}
	use {
    		'nvim-telescope/telescope.nvim',
    		requires = { {'nvim-lua/plenary.nvim'} }
  	}
  use { 'github/copilot.vim' }
  use { 
    'NTBBloodbath/rest.nvim',
    commit = 'e5f68db73276c4d4d255f75a77bbe6eff7a476ef',
    requires = 'nvim-lua/plenary.nvim'
  }
end)
