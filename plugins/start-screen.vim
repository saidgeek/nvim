let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   Files']            },
      \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ ]

let g:startify_bookmarks = [
      \ { 'b': '~/Documents/Notes/Bujo' },
      \ { 'np': '~/Documents/Notes/personal' },
      \ { 'i': '~/.config/nvim' },
      \ { 'z': '~/.zshrc' },
      \ ]
