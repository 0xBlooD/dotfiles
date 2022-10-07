call plug#begin("$HOME/.config/nvim/plugged")

    Plug 'navarasu/onedark.nvim'
    Plug 'itchyny/lightline.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'kyazdani42/nvim-web-devicons'

    Plug 'scrooloose/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

    Plug 'sheerun/vim-polyglot'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'akinsho/bufferline.nvim'
    Plug 'petertriho/nvim-scrollbar'
    Plug 'frazrepo/vim-rainbow'

call plug#end()

syntax enable
colorscheme onedark
filetype plugin indent on

if !has('gui_running')
  set t_Co=256
endif

set title
set hidden
set mouse=a
set number
set ttyfast
set tabstop=4
set wildmenu
set hlsearch
set nobackup
set scrolloff=10
set expandtab
set noshowcmd
set incsearch
set smartcase
set clipboard=unnamedplus
set noshowmode
set shiftwidth=4
set autoindent
set cursorline
set noswapfile
set background=dark
set inccommand=split
set splitbelow
set splitright
set autoindent
set laststatus=2
set smartindent
set softtabstop=4
set ttimeoutlen=0
set completeopt=noinsert,menuone,noselect,menu
set nocompatible
set termguicolors
set nowritebackup

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

let g:lightline = {
    \ 'colorscheme': 'one',
    \ }

let NERDTreeShowHidden=1
let g:airline_powerline_fonts = 1
let g:airline#extensions#capslock#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

nnoremap <silent> <Tab> :NERDTreeToggle<CR>

nnoremap <silent> <C-w> :w!<CR>
nnoremap <silent> <C-q> :q!<CR>
nnoremap <silent> <C-s> :wq!<CR>
nnoremap <silent> <C-S-w> :noa w<CR>
nnoremap <silent> <C-S-q> :noa q<CR>
nnoremap <silent> <C-S-s> :noa wq<CR>

autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd FileType css setl iskeyword+=-
autocmd FileType scss setl iskeyword+=@-@
autocmd FileType tex let b:coc_pairs = [["$", "$"]]

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
