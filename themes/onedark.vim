if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

hi Comment cterm=italic
let g:onedark_hide_endoffbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256


syntax enable
colorscheme onedark

if (has("termguicolors"))
  set termguicolors
  hi LineNr ctermbg=NONE guibg=NON
  set termguicolors
  hi LineNr ctermbg=NONE guibg=NONEE
endif
