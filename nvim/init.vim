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

"webdev
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', { 'for':  ['ts', 'tsx', 'js', 'jsx'] }

call plug#end()

"nord
colorscheme nord
