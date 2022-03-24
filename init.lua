---@diagnostic disable: undefined-global

require 'basics'
require 'colors'
require 'coc-config'
require 'telescope-config'
require('lualine').setup()

require('nvim-treesitter.configs').setup {
	ensure_installed = "maintained",
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
end)
