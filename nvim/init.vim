set number
set relativenumber
set scrolloff=10
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a

nnoremap ƒ :NERDTreeToggle<CR>

"neoformat
let g:neoformat_try_node_exe = 1

call plug#begin()
"general
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'

"dev
Plug 'sbdchd/neoformat'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"webdev
Plug 'neoclide/coc-tsserver', { 'for':  ['ts', 'tsx', 'js', 'jsx'] }

"rust
Plug 'rust-lang/rust.vim'
Plug 'fannheyward/coc-rust-analyzer', {'for': ['rs', 'rlib'] }

"math
Plug 'lervag/vimtex', { 'for': ['tex'] }

"fun
Plug 'dansomething/vim-hackernews'


call plug#end()

"nord
colorscheme nord

"math
let g:vimtex_view_method = 'zathura'
