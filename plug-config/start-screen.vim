
let g:startify_session_dir = '~/.config/nvim/session'
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
        \'  ______                    _             __',
        \' /_  __/__  _________ ___  (_)___  ____ _/ /',
        \'  / / / _ \/ ___/ __ `__ \/ / __ \/ __ `/ /',
        \' / / /  __/ /  / / / / / / / / / / /_/ / /',
        \'/_/  \___/_/  /_/ /_/ /_/_/_/ /_/\__,_/_/'
        \]
