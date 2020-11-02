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

let g:startify_custom_header = [
  \'              _      _   ______                _     ',
  \'             (_)    | | / _____)              | |    ',
  \'  ___   ____  _   _ | || /  ___   ____   ____ | |  _ ',
  \' /___) / _  || | / || || | (___) / _  ) / _  )| | / )',
  \'|___ |( ( | || |( (_| || \____/|( (/ / ( (/ / | |< ( ',
  \'(___/  \_||_||_| \____| \_____/  \____) \____)|_| \_)'                                                  
  \ ]
