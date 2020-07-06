
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ { 'c':'~/dev' },
            \ { 'd':'~/desktop' },
            \ ]
let g:startify_custom_header = [
        \ '    ___         __  __         _  ',
        \ '   /   |  _____/ /_/ /_  _____(_)____',
        \ '  / /| | / ___/ __/ __ \/ ___/ / ___/',
        \ ' / ___ |/ /  / /_/ / / / /  / (__  )',
        \ '/_/  |_/_/   \__/_/ /_/_/  /_/____/',
        \]
