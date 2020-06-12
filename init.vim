call plug#begin('$HOME/.local/share/nvim/plugged')

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'}
"Plug 'zchee/deoplete-jedi'
Plug 'SirVer/ultisnips'		"snippet engine
"Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Conquer of Completion, for code completion
Plug 'vim-airline/vim-airline'	"lightweight statusline
Plug 'vim-airline/vim-airline-themes'
Plug 'voldikss/vim-floaterm' 	"floating terminal
Plug 'jiangmiao/auto-pairs' 	"matching brackets and quotes
Plug 'terryma/vim-multiple-cursors' 
Plug 'puremourning/vimspector'	"for debugging
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'frazrepo/vim-rainbow' 	"different colored brackets
Plug 'sbdchd/neoformat'		"code formatter
"Plug 'neomake/neomake'
Plug 'dense-analysis/ale'	"Asynchronous Lint Engine, or for syntax checking
Plug 'tmhedberg/SimpylFold'	"code folding
Plug 'rhysd/vim-clang-format'
Plug 'tpope/vim-fugitive'	"vim git wrapper?
Plug 'sheerun/vim-polyglot'	"language pack
Plug 'brooth/far.vim', {'do': 'UpdateRemotePlugins'} "find and replace

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'	
Plug 'iamcco/markdown-preview.nvim', {'do': {-> mkdp#util#install()}, 'for': ['markdown', 'vim-plug']}

"theming
Plug 'joshdick/onedark.vim'
"Plug 'joshdick/airline-onedark.vim'
"Plug 'cocopon/iceberg.vim'
Plug 'marciomazza/vim-brogrammer-theme'
Plug 'ryanoasis/vim-devicons'	"provides nice icons for stuffs :)
"Plug 'dracula/vim', {'as': 'dracula'}
Plug 'kyoz/purify', {'rtp': 'vim'}
"Plug 'sickill/vim-monokai'
"Plug 'ayu-theme/ayu-vim'
"Plug 'severin-lemaignan/vim-minimap'
Plug 'jeffkreeftmeijer/vim-numbertoggle' "contextual line numbertoggling


call plug#end()


let g:python_host_prog = '/usr/bin/python'
"==============
"Basic Configs
"==============

set number relativenumber
set cursorline
"set colorcolumn=80
set termguicolors
set splitbelow
set splitright
"proper tabbing ==>
set tabstop=4
set softtabstop=4
set shiftwidth=4

"========
"Theming
"========

set t_Co=256
set termguicolors
syntax on
"let ayucolor = 'mirage'
colorscheme brogrammer

"airline configs==>
let g:airline_theme='purify'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"vim-rainbow configs==>
let g:rainbow_active = 1

"=========
"Markdown
"=========

"vim-markdown configs==>
let g:vim_markdown_conceal = 0

let g:tex_conceal = ""

let g:vim_markdown_math = 1

"markdown-preview configs==>
let g:mkdp_auto_close = 0


"===================
"Custom Keybindings
"===================

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
