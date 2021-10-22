" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <UP>    :resize -2<CR>
nnoremap <DOWN>    :resize +2<CR>
nnoremap <LEFT>    :vertical resize +2<CR>
nnoremap <RIGHT>    :vertical resize -2<CR>
" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
" Easy CAPS
inoremap <c-u> <ESC>viwUi nnoremap <c-u> viwU<Esc>

" Move Between Buffer
nnoremap <C-e> :bnext<CR>
nnoremap <C-a> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
"nnoremap <C-c> <Esc>
" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? \<C-n>" : "\<TAB>"
" FZF Search
nnoremap <C-P> :GFiles<CR>

" Better tabbing vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>/ :set hlsearch!<CR>

nnoremap Q <nop>
nnoremap <C-h> <C-W>h
nnoremap <C-i> <C-W>i
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k 
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 
nmap <space>x :vertical resize 120<CR>

" Fugitive
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>

