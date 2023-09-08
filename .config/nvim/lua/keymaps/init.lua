local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<A-w>", "<CMD>wq!<CR>", opts)
map("n", "<A-q>", "<CMD>q!<CR>", opts)
map("n", "<A-s>", "<CMD>w!<CR>", opts)

map("n", "<A-h>", "<CMD>wincmd h<CR>", opts)
map("n", "<A-j>", "<CMD>wincmd j<CR>", opts)
map("n", "<A-k>", "<CMD>wincmd k<CR>", opts)
map("n", "<A-l>", "<CMD>wincmd l<CR>", opts)

map("n", "<A-S-Down>", "<CMD>resize -2<CR>", opts)
map("n", "<A-S-Up>", "<CMD>resize +2<CR>", opts)
map("n", "<A-S-Right>", "<CMD>vertical resize -2<CR>", opts)
map("n", "<A-S-Left>", "<CMD>vertical resize +2<CR>", opts)

map({"n", "i"}, "<A-x>", "<ESC><CMD>noh<CR>", opts)

map("n", "<A-b>", "<CMD>BufferClose<CR>", opts)
map("n", "<A-S-h>", "<CMD>BufferPrevious<CR>", opts)
map("n", "<A-S-l>", "<CMD>BufferNext<CR>", opts)

map("n", "<A-m>", "<ESC><CMD>NvimTreeToggle<CR>", opts)
