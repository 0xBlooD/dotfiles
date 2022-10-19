local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<C-w>", ":w!<CR>", opts)
map("n", "<C-q>", ":q!<CR>", opts)
map("n", "<C-s>", ":wq!<CR>", opts)

map("n", "<C-x>", ":noh<CR>", opts)

map("n", "<C-b>", ":BufferClose<CR>", opts)
map("n", "<C-S-h>", ":BufferPrevious<CR>", opts)
map("n", "<C-S-l>", ":BufferNext<CR>", opts)
map('n', '<C-p>', ':BufferPin<CR>', opts)

map("n", "<C-k>", ":wincmd k<CR>", opts)
map("n", "<C-j>", ":wincmd j<CR>", opts)
map("n", "<C-h>", ":wincmd h<CR>", opts)
map("n", "<C-l>", ":wincmd l<CR>", opts)

map("n", "<C-m>", ":NvimTreeToggle<CR>", opts)

map("n", "<C-t>", ":ToggleTerm<CR>", opts)

map("n", "<C-g>", ":Gitsigns toggle_current_line_blame<CR>", opts)
