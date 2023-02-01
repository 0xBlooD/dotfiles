local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<C-q>", "<CMD>q!<CR>", opts)
map("n", "<C-w>", "<ESC><CMD>w!<CR>", opts)
map("i", "<C-w>", "<ESC><CMD>w!<CR>a", opts)
map("n", "<C-s>", "<CMD>wq!<CR>", opts)

map("n", "<C-b>", "<CMD>BufferClose<CR>", opts)
map("n", "<C-S-h>", "<CMD>BufferPrevious<CR>", opts)
map("n", "<C-S-l>", "<CMD>BufferNext<CR>", opts)

map("n", "<C-k>", "<CMD>wincmd k<CR>", opts)
map("n", "<C-j>", "<CMD>wincmd j<CR>", opts)
map("n", "<C-h>", "<CMD>wincmd h<CR>", opts)
map("n", "<C-l>", "<CMD>wincmd l<CR>", opts)

map({"n", "i"}, "<C-x>", "<ESC><CMD>noh<CR>", opts)

map("n", "<C-c>", "<CMD>PickColor<CR>", opts)
map("i", "<C-c>", "<CMD>PickColorInsert<CR>", opts)

map("n", "<C-m>", "<ESC><CMD>NvimTreeToggle<CR>", opts)

map("n", "<C-t>", "<ESC><CMD>ToggleTerm<CR>", opts)

map({"n", "i"}, "<C-f>", "<ESC><CMD>Telescope file_browser<CR>", opts)
