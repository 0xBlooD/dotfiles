local map = vim.keymap.set
local silent = { silent = true }

map("n", "<C-b>", ":bd!<CR>", silent) -- close current buffer
map("n", "<C-w>", ":w!<CR>", silent) -- just write
map("n", "<C-q>", ":q!<CR>", silent) -- quit without write
map("n", "<C-s>", ":wq!<CR>", silent) -- write and quit

map("n", "<C-S-c>", ":noh<CR>", silent) -- clear search

map("n", "<Tab>", ":NvimTreeToggle<CR>", silent) -- toggle nvim-tree
-- map("n", "<C-c>", "", silent) -- nerdcomment

map("n", "<C-f>", ":Telescope find_files<CR>", silent) -- run find files

map("n", "<C-g>", ":Gitsigns toggle_current_line_blame<CR>", silent)
