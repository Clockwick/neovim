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
" set the runtime path to include Vundle and initialize set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')
" Main Plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'junegunn/goyo.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'glench/vim-jinja2-syntax'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'voldikss/vim-floaterm'
" Colorscheme
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'mhartington/oceanic-next'
Plug 'whatyouhide/vim-gotham'
Plug 'tomasiser/vim-code-dark'
Plug 'tomasr/molokai'
"Syntax highlight
" 
" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
call plug#end()
filetype plugin on    " required
" ======================================================================Setting======================================================================================="
source $HOME/.config/nvim/general/settings.vim
" ========================================================================Coc========================================================================================="
source $HOME/.config/nvim/plug-config/coc.vim
" =========================================================================Prettier==================================================================================="
source $HOME/.config/nvim/plug-config/prettier.vim
" ========================================================================Starify====================================================================================="
source $HOME/.config/nvim/plug-config/fzf.vim
" ==========================================================================FZF======================================================================================="
source $HOME/.config/nvim/plug-config/start-screen.vim
" =====================================================================Font Style====================================================================================="
source $HOME/.config/nvim/plug-config/polyglot.vim
" =====================================================================Easy motion====================================================================================="
source $HOME/.config/nvim/plug-config/easymotion.vim
" =====================================================================Floaterminal====================================================================================="
source $HOME/.config/nvim/plug-config/floaterm.vim
" =====================================================================Font Style====================================================================================="
let g:gruvbox_italic=1
" ========================================================================Map========================================================================================="
source $HOME/.config/nvim/keys/mappings.vim
" Rainbow Time
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{','}']]
" =====================================================================Transparent===================================================================================="
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
"hi! Normal ctermbg=NONE guibg=NONE 
"hi! NonText ctermbg=NONE guibg=NONE
"Gruv_Box
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'soft'
let g:gruvbox_invert_selection='0'
"Ocean_Next
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

let g:onedark_termcolors=256
let g:onedark_color_overrides = {
\ "black": {"gui": "#232323", "cterm": "235", "cterm16": "0" },
\ "purple": { "gui": "#C678DF", "cterm": "170", "cterm16": "5" }
\}
source $HOME/.config/nvim/themes/xcodedark.vim
