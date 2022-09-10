call plug#begin("$HOME/.config/nvim/plugged")

Plug 'navarasu/onedark.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'

Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-capslock'
Plug 'plasticboy/vim-markdown'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'sheerun/vim-polyglot'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

call plug#end()

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

syntax enable
colorscheme onedark
filetype plugin indent on

set t_Co=256
set title
set hidden
set mouse=a
set number
set ttyfast
set tabstop=2
set wildmenu
set hlsearch
set nobackup
set scrolloff=5
set expandtab
set noshowcmd
set incsearch
set smartcase
set clipboard=unnamedplus
set noshowmode
set shiftwidth=2
set autoindent
set cursorline
set noswapfile
set background=dark
set inccommand=split
set splitbelow
set splitright
set autoindent
set smartindent
set softtabstop=2
set ttimeoutlen=0
set completeopt=noinsert,menuone,noselect,menu
set nocompatible
set termguicolors

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

let NERDTreeShowHidden=1
let g:airline_powerline_fonts = 1
let g:airline#extensions#capslock#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

let g:tex_conceal = ''
let g:vim_markdown_math = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['tsx=typescriptreact']

nnoremap <silent> <A-q> :q!<CR>
nnoremap <silent> <A-s> :w!<CR>
nnoremap <silent> <A-w> :wq!<CR>
nnoremap <silent> <A-S-s> :noa w!<CR>
nnoremap <silent> <A-S-w> :noa wq!<CR>
nnoremap <silent> <A-b> :bd!<CR>
nnoremap <silent> <A-n> :tabnew<CR>

nnoremap <silent> <A-Tab> :NERDTreeToggle<CR>
nnoremap <silent> <A-c> :call nerdcommenter#Comment(0,"toggle")<CR>
vnoremap <silent> <A-c> :call nerdcommenter#Comment(0,"toggle")<CR>

nnoremap <silent> <A-C-h> :tabprevious<CR>
nnoremap <silent> <A-C-l> :tabnext<CR>

nnoremap <silent> <A-S-k> <A-HOME>
nnoremap <silent> <A-S-j> <A-END>
nnoremap <silent> <A-S-h> <HOME>
nnoremap <silent> <A-S-l> <END>
inoremap <silent> <A-S-k> <A-HOME>
inoremap <silent> <A-S-j> <A-END>
inoremap <silent> <A-S-h> <HOME>
inoremap <silent> <A-S-l> <END>
vnoremap <silent> <A-S-k> <A-HOME>
vnoremap <silent> <A-S-j> <A-END>
vnoremap <silent> <A-S-h> <HOME>
vnoremap <silent> <A-S-l> <END>

augroup auto_commands
	autocmd BufWrite *.py call CocAction('format')
	autocmd FileType scss setlocal iskeyword+=@-@
augroup END
