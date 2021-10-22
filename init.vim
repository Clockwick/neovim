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
" set the runtime path to include Vundle and initialize set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged') " Main Plugin Plug 'neoclide/coc.nvim', {'branch': 'release'}

  
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'sheerun/vim-polyglot'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'neovim/nvim-lspconfig'
" Colorscheme
Plug 'owickstrom/vim-colors-paramount'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'mhartington/oceanic-next'
Plug 'whatyouhide/vim-gotham'
Plug 'tomasiser/vim-code-dark'
Plug 'tomasr/molokai'
Plug 'hzchirs/vim-material'
Plug 'ParamagicDev/vim-medic_chalk'
"Syntax highlight Fzf
Plug 'airblade/vim-rooter'
" Coc neovim

call plug#end()
filetype plugin on    " required

" ======================================================================COC======================================================================================="
source $HOME/.config/nvim/plug-config/coc.vim
" ======================================================================Setting======================================================================================="
source $HOME/.config/nvim/general/settings.vim
" ==========================================================================FZF======================================================================================="
source $HOME/.config/nvim/plug-config/start-screen.vim
" ===================================================================== Easy motion ======================================================================================="
source $HOME/.config/nvim/plug-config/easymotion.vim
" ========================================================================Map========================================================================================="
source $HOME/.config/nvim/keys/mappings.vim
" ========================================================================Map========================================================================================="
source $HOME/.config/nvim/plug-config/lspconfig.rc.vim
" ========================================================================Quick normal========================================================================================="
inoremap jk <Esc>
inoremap kj <Esc>

"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
"hi! Normal ctermbg=NONE guibg=NONE 
"hi! NonText ctermbg=NONE guibg=NONE
"Gruv_Box
let g:gruvbox_italic=1
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

let g:python_highlight_space_errors = 0
"source $HOME/.config/nvim/themes/brogrammer.vim
"Dark
"set background=dark
colorscheme vim-material

"Palenight
"let g:material_style='palenight'
"set background=dark
"colorscheme vim-material
" Oceanic
"let g:material_style='oceanic'
"set background=dark
"colorscheme vim-material
"
"" Light
"set background=light
"colorscheme vim-material
  


