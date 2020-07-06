if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')


  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')
" Main Plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'junegunn/goyo.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'glench/vim-jinja2-syntax'
Plug 'jiangmiao/auto-pairs'
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
" Colorscheme
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'joshdick/onedark.vim'
" Jsx and Tsx
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()
filetype plugin on    " required
" ======================================================================Setting======================================================================================="
source $HOME/.config/nvim/general/settings.vim
" ========================================================================Coc========================================================================================="
source $HOME/.config/nvim/plug-config/coc.vim
" =======================================================================Sneak========================================================================================"
source $HOME/.config/nvim/plug-config/sneak.vim
" =======================================================================Sneak========================================================================================"
source $HOME/.config/nvim/plug-config/quickscope.vim
" =======================================================================Prettier========================================================================================"
source $HOME/.config/nvim/plug-config/prettier.vim
" =======================================================================Starify====================================================================================="
source $HOME/.config/nvim/plug-config/start-screen.vim
" =====================================================================Font Style====================================================================================="
let g:gruvbox_italic=1
" =====================================================================Color Setting=================================================================================="
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" Rainbow Time
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{','}']]
" =====================================================================Transparent===================================================================================="
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE
set termguicolors
colorscheme gruvbox 
let t:is_transparent = 1

function! Toggle_transparent()
    if t:is_transparent == 1
        hi! Normal ctermbg=NONE guibg=NONE 
        hi! NonText ctermbg=NONE guibg=NONE
        let t:is_transparent = 0
    else
        hi! Normal ctermbg=Black guibg=#212A2F
        hi! NonText ctermbg=Black guibg=#212A2F
        let t:is_transparent = 1
    endif
endfunction
nnoremap <C-t> : call Toggle_transparent()<CR>
" ========================================================================Map========================================================================================="
source $HOME/.config/nvim/keys/mappings.vim
"map <Space> :EditVifm .<CR>
map <ENTER> :Goyo<CR>
map <F1> :colorscheme gruvbox<CR> 
map <F3> :colorscheme onedark<CR> 
map <C-p> :RainbowParentheses !!<CR>

nnoremap Q <nop>

nnoremap <C-h> <C-W>h
nnoremap <C-i> <C-W>i
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv


