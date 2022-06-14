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
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'shaunsingh/nord.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"dev
Plug 'sbdchd/neoformat'
Plug 'kdheepak/lazygit.nvim'
Plug 'airblade/vim-gitgutter'

"webdev
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', { 'for':  ['ts', 'tsx', 'js', 'jsx'] }

call plug#end()

"nord
colorscheme nord
