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
Plug 'junegunn/limelight.vim'
Plug 'junegunn/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'vifm/vifm.vim'
Plug 'junegunn/goyo.vim'
Plug 'HerringtonDarkholme/yats.vim'
" Color Scheme
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
Plug 'kien/rainbow_parentheses.vim'


call plug#end()
filetype plugin on    " required
" ==========================================================Setting====================================================="
source $HOME/.config/nvim/general/settings.vim
"=====================================================Status============================================================"
set statusline=
set statusline+=%#DiffAdd#
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %F
set statusline+=%=
set statusline+=%#RedrawDebugNormal#
set statusline+=\ %c:%l/%L
set statusline+=\ %p%%
set statusline+=\ [%n]


" =================================================Font Style==========================================================="
let g:gruvbox_italic=1
" =================================================Color Setting========================================================"

colorscheme molokai 
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:gruvbox_termcolors=256
" =====================================================Map============================================================== "
source $HOME/.config/nvim/keys/mappings.vim
map <Space> :EditVifm .<CR>
map <ENTER> :Goyo<CR>
map <F1> :colorscheme gruvbox<CR>
map <F2> :colorscheme molokai<CR>

nnoremap Q <nop>

nnoremap <C-h> <C-W>h
nnoremap <C-i> <C-W>i
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" =====================================================Goyo============================================================== "
function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set nocursorline
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  set cursorline
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()


" =====================================================Live server============================================================== "
