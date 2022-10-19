local set = vim.opt
local cmd = vim.cmd

cmd("colorscheme tokyonight")
cmd("filetype indent plugin on")
cmd("autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll")

set.autoindent = true
set.background = 'dark'
set.backup = false
set.browsedir = 'buffer'
set.clipboard = 'unnamedplus'
set.compatible = false
set.completeopt = 'menu,menuone,longest,noselect'
set.cursorline = true
set.encoding = 'utf-8'
set.expandtab = true
set.fileencoding = 'utf-8'
set.foldexpr = 'nvim_treesitter#foldexpr()'
set.foldmethod = 'expr'
set.hidden = true
set.hlsearch = true
set.ignorecase = true
set.inccommand = 'split'
set.incsearch = true
set.list = true
set.listchars:append "space:⋅"
set.listchars:append "eol:↴"
set.mouse = 'a'
set.number = true
set.scrolloff = 10
set.shiftwidth = 4
set.showmode = false
set.smartcase = true
set.smartindent = true
set.softtabstop = 0
set.splitbelow = true
set.splitright = true
set.swapfile = false
set.syntax = 'on'
set.tabstop = 4
set.termguicolors = true
set.title = true
set.wildmenu = true
set.wrap = false
