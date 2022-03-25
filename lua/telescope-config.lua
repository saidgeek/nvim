---@diagnostic disable: undefined-global

require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "coverage",
      "dist",
      "build",
    },
  },
	pickers = {
		find_files = {
			theme ="ivy"
		},
		live_grep = {
			theme ="ivy"
		},
		buffers = {
			theme ="ivy"
		},
	}
}

vim.api.nvim_set_keymap('n', '<C-P>', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-F>', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-B>', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })
