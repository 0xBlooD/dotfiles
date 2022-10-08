local g = vim.g -- variable to vim.g
local opt = vim.opt -- variable to vim.opt
local cmd = vim.cmd -- variable to vim.cmd

-- Enable syntax highlight
-- and automatic detect filetype
cmd([[
    syntax enable
    colorscheme onedark
    filetype plugin indent on
]])

opt.list = true
opt.listchars:append "space:⋅"
opt.listchars:append "eol:↴"
opt.termguicolors = true

opt.mouse = "a" -- enable mouse

opt.number = true -- show line numbers

opt.laststatus = 2

opt.compatible = false

opt.title = true -- enable title of the window

opt.background = "dark" -- neovim dark theme
opt.termguicolors = true -- ui color

opt.smartcase = true -- ignore uppercase letters unless the search has an uppercase
opt.ignorecase = true -- neovim ignore uppercase letters

opt.hlsearch = true -- highlight previous search pattern
opt.incsearch = true -- highlight while typing a search command

opt.wrap = true -- wrap the line

opt.cursorline = true -- highlight cursor line

opt.tabstop = 4 -- spaces on screen a TAB character can occupy
opt.shiftwidth = 4 -- indent line using << >>
opt.softtabstop = 2 -- number of spaces that TAB counts for while performing editing operations
opt.expandtab = true -- control whether neovim should transform TAB in spaces
opt.smartindent = true -- smart autoindent when starting a new line

opt.scrolloff = 10 -- minimal number of screen lines to keep above or below the cursor

opt.hidden = true -- load buffer

opt.swapfile = false -- disable swap file
opt.backup = false -- disable backup
opt.writebackup = false -- disable write backup

opt.wildmenu = true -- command line completion

opt.clipboard = "unnamedplus" -- communicate with system clipboard

opt.showcmd = false -- disable because lightline
opt.showmode = false -- again

opt.splitbelow = true -- :split will put the new window below
opt.splitright = true -- :vsplit will put the new window right

opt.inccommand = "split" -- shows the effect of a command incrementally also shows partial off-screen results

opt.encoding = "utf-8" -- set encoding to utf-8

opt.completeopt = "menu,menuone,noinsert,noselect" -- list of oprtions for INSERT mode completion
