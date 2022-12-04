local set = vim.opt
local cmd = vim.cmd

cmd('colorscheme adwaita')
vim.g.adwaita_darker = true

set.autochdir = true
set.autoindent = true
set.autoread = true
set.autowrite = true
set.background = "dark"
set.backup = false
set.breakindent = true
set.browsedir = "buffer"
set.clipboard = "unnamedplus"
set.completeopt = "menuone,longest,noselect"
set.copyindent = true
set.cursorline = true
set.cursorlineopt = "number,line"
set.emoji = true
set.encoding = "utf-8"
set.expandtab = true
set.fileencoding = "utf-8"
set.foldmethod = "expr"
set.foldexpr = "nvim_treesitter#foldexpr()"
set.foldenable = false
set.hidden = true
set.hlsearch = true
set.ignorecase = true
set.inccommand = "split"
set.incsearch = true
set.list = true
set.listchars:append "space:⋅"
set.mouse = "a"
set.number = true
set.relativenumber = true
set.scrolloff = 5
set.shiftwidth = 4
set.showcmd = false
set.showcmd = false
set.smartcase = true
set.smartindent = true
set.smarttab = true
set.softtabstop = 2
set.splitbelow = true
set.splitright = true
set.swapfile = false
set.syntax = "enable"
set.tabstop = 4
set.termguicolors = true
set.title = true
set.wildmenu = true
set.wildmode = "longest,full"
set.wrap = true
