set number
set relativenumber
set scrolloff=10
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a

nnoremap ; :
vnoremap ; :

"neoformat
let g:neoformat_try_node_exe = 1

call plug#begin()
"general
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'echuraev/translate-shell.vim'
Plug 'tpope/vim-obsession'

"dev
Plug 'sbdchd/neoformat'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'uarun/vim-protobuf'
Plug 'solarnz/thrift.vim'

"webdev
Plug 'neoclide/coc-tsserver', { 'for':  ['ts', 'tsx', 'js', 'jsx'] }

"rust
Plug 'rust-lang/rust.vim'
Plug 'fannheyward/coc-rust-analyzer', {'for': ['rs', 'rlib'] }

"go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"math
Plug 'lervag/vimtex', { 'for': ['tex'] }

"fun
Plug 'dansomething/vim-hackernews'


call plug#end()

"nord
colorscheme nord

cnoreabbrev Translate Trans -show-dictionary n -show-original n -show-original-phonetics n -show-translation-phonetics n -show-prompt-message n -show-languages n -show-alternatives n

"math
let g:vimtex_view_method = 'zathura'
